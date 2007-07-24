package uk.icat3.security;

import java.util.Collection;
import org.apache.log4j.Logger;
import uk.icat3.entity.EntityBaseBean;
import uk.icat3.exceptions.InsufficientPrivilegesException;
import uk.icat3.manager.ManagerUtil;
import uk.icat3.util.AccessType;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.swing.text.html.HTMLDocument.HTMLReader.IsindexAction;
import uk.icat3.entity.Datafile;
import uk.icat3.entity.DatafileParameter;
import uk.icat3.entity.Dataset;
import uk.icat3.entity.DatasetParameter;
import uk.icat3.entity.IcatAuthorisation;
import uk.icat3.entity.Investigation;
import uk.icat3.entity.Investigator;
import uk.icat3.entity.Keyword;
import uk.icat3.entity.Publication;
import uk.icat3.entity.Sample;
import uk.icat3.entity.SampleParameter;
import uk.icat3.util.ElementType;
import static uk.icat3.util.Util.*;
/**
 * This grants or denies access to all the objects within the database
 */
public class GateKeeper {
    
    /** Creates a new instance of GateKeeper */
    public GateKeeper() {
    }
    
    // Global class logger
    static Logger log = Logger.getLogger(GateKeeper.class);
    
            /**
     * Decides if a user has permission to perform an operation of type
     * {@link AccessType} on a {@link Study} element/entity.  If the
     * user does not have permission to perform aforementioned operation
     * then an {@link InsufficientPrivilegesException} will be thrown.
     *
     * <p>A Study can have multiple Investigations, so find them all and
     *  use each one to check authorisation. If a user has authorisation
     *  on any one of the investigations contained within the study then
     *  those permissions are extended to the parent Study element.</p>
     *
     * @param user          username or dn of user who is to be authorised.
     * @param object        object entitybasebean of the  element/entity that
     *                      the user wishes to perform operation on.
     * @param access        type of operation that the user is trying to
     *                      perform.
     * @param manager       manager object that will facilitate interaction
     *                      with underlying database
     * @throws InsufficientPrivilegesException  if user does not have
     *                      permission to perform operation.
     */
    public static void performAuthorisation(String user, EntityBaseBean object, AccessType access, EntityManager manager) throws InsufficientPrivilegesException {
        
        Investigation investigation = null;
        
        if(object instanceof Publication){
            performAuthorisation(user, access, object, ElementType.PUBLICATION, manager);
        } else if(object instanceof Investigation){   
            performAuthorisation(user, access, object, ElementType.INVESTIGATION, manager);
        } else if(object instanceof Keyword){
            performAuthorisation(user, access, object, ElementType.KEYWORD, manager);
        } else if(object instanceof Dataset){
            performAuthorisation(user, access, object, ElementType.DATASET, manager);
        } else if(object instanceof Datafile){
            performAuthorisation(user, access, object, ElementType.DATAFILE, manager);
        } else if(object instanceof DatasetParameter){
            performAuthorisation(user, access, object, ElementType.DATASET_PARAMETER, manager);
        } else if(object instanceof DatafileParameter){
            performAuthorisation(user, access, object, ElementType.DATAFILE_PARAMETER, manager);
        } else if(object instanceof SampleParameter){
            performAuthorisation(user, access, object, ElementType.SAMPLE_PARAMETER, manager);
        } else if(object instanceof Sample){
            performAuthorisation(user, access, object, ElementType.SAMPLE, manager);
        } else if(object instanceof Investigator){
            performAuthorisation(user, access, object, ElementType.INVESTIGATOR, manager);
        } /* else if(object instanceof Study){
            performAuthorisation(user, access, object, ElementType.STUDY, manager);
        }*/ else throw new InsufficientPrivilegesException(object.getClass().getSimpleName()+" not supported for security check.");;
        
       
        
    }//end method
    
    /**
     * Private method that ultimately does the low-level permission check
     * against the database.  This method retrieves all permission elements
     * associated with a given user and investigation pair.  If user has
     * been granted the appropriate access permission in the database then
     * the method returns without error.  Otherwise an exception with
     * appropriate details is raised, logged and thrown back to the caller.
     *
     * @param user              username or dn of user who is to be authorised.
     * @param investigations    collection if elements/entities that the user wishes
     *                          to perform operation on.
     * @param access            type of operation that the user is trying to perform.
     * @param element           name of element/entity type that user is really trying to
     *                          access in some way e.g. datafile.  This is used for
     *                          purposes only.
     * @param elementId         primary key of specific element/entity that user is trying
     *                          to access.
     * @param manager           manager object that will facilitate interaction
     *                          with underlying database
     * @throws InsufficientPrivilegesException  if user does not have
     *                          permission to perform operation.
     */
    private static void performAuthorisation(String user, AccessType access, EntityBaseBean element, ElementType elementType, EntityManager manager) throws InsufficientPrivilegesException {
        IcatAuthorisation icatAuthorisation = null;
        boolean success = false;
        
        //get icat authroisation
        try{
            if(isInvestigationType(elementType)) {
                icatAuthorisation = findIcatAuthorisation(user, ElementType.INVESTIGATION, ((Investigation)element).getId(), manager);
            } else if(isDatasetType(elementType)) {
                icatAuthorisation = findIcatAuthorisation(user, ElementType.DATASET, ((Dataset)element).getId(), manager);
            } else if(isDatafileType(elementType)) {
                icatAuthorisation = findIcatAuthorisation(user, ElementType.DATAFILE, ((Datafile)element).getId(), manager);
            }
        } catch(InsufficientPrivilegesException ipe){
            log.warn("User: " + user + " does not have permission to perform '" + access + "' operation on " + element );
            throw new InsufficientPrivilegesException("User: " + user + " does not have permission to perform '" + access + "' operation on " + element.getClass().getSimpleName() );
        }
        
        //now check the access permission from the icat authroisation
        if(access == AccessType.READ && parseBoolean(icatAuthorisation.getRole().getActionSelect())){
            success = true; //user has access to read element
        } else if(access == AccessType.REMOVE){
            //check if element type is a root, if so check root remove permissions
            if(isRootType(elementType) && parseBoolean(icatAuthorisation.getRole().getActionRootRemove())){
                success = true; //user has access to remove root element
            } else if(parseBoolean(icatAuthorisation.getRole().getActionRemove())){
                success = true; //user has access to remove element
            }
        } else if(access == AccessType.CREATE){
            //check if element type is a root, if so check root insert permissions
            if(isRootType(elementType) && parseBoolean(icatAuthorisation.getRole().getActionRootInsert())){
                success = true; //user has access to insert root root element
            } else if(parseBoolean(icatAuthorisation.getRole().getActionInsert())){
                success = true; //user has access to insert element
            }
        } else if(access == AccessType.UPDATE && parseBoolean(icatAuthorisation.getRole().getActionUpdate())){
            success = true; //user has access to update element
        } else if(access == AccessType.DELETE && parseBoolean(icatAuthorisation.getRole().getActionDelete())){
            success = true; //user has access to delete element
        } else if(access == AccessType.DOWNLOAD && parseBoolean(icatAuthorisation.getRole().getActionDownload())){
            success = true; //user has access to download element
        } else if(access == AccessType.SET_FA && parseBoolean(icatAuthorisation.getRole().getActionSetFa())){
            success = true; //user has access to set FA element
        }
        
        //now check if has permission and if not throw exception
        if(success){
            log.debug("User: " + user + " granted " + access + " permission on " + element );
        } else {
            log.warn("User: " + user + " does not have permission to perform '" + access + "' operation on " + element );
            throw new InsufficientPrivilegesException("User: " + user + " does not have permission to perform '" + access + "' operation on " + element.getClass().getSimpleName() );
        }
    }
    
    /**
     * This finds the IcatAuthorisation for the user, it first tries to find the one corresponding
     * to the users fedId, if this is not found, it looks for the ANY as the fedId
     * 
     */
    private static IcatAuthorisation findIcatAuthorisation(String userId, ElementType type, Long id, EntityManager manager) throws InsufficientPrivilegesException {
        if(type != ElementType.INVESTIGATION || type != ElementType.DATAFILE || type != ElementType.DATASET) throw new RuntimeException("ElementType: "+type+" not supported");
        
        Query query = manager.createNamedQuery("IcatAuthorisation.findById").
                setParameter("elementType", type.toString()).
                setParameter("elementId", id).
                setParameter("userId", userId);
        
        IcatAuthorisation icatAuthorisation = (IcatAuthorisation)query.getSingleResult();
        if(icatAuthorisation == null) {
            //try find ANY
            query.setParameter("userId", "ANY");
            icatAuthorisation = (IcatAuthorisation)query.getSingleResult();
            if(icatAuthorisation == null) throw new InsufficientPrivilegesException();
            else return icatAuthorisation;
        } else {
            return icatAuthorisation;
        }
    }
    
    /**
     * Checks wheather this type of element belongs to an investigation
     */
    private static boolean isInvestigationType(ElementType elementType){
        if(elementType == ElementType.INVESTIGATION ||
                elementType == ElementType.SAMPLE || elementType == ElementType.SAMPLE_PARAMETER ||
                elementType == ElementType.KEYWORD || elementType == ElementType.INVESTIGATOR ||
                elementType == ElementType.SAMPLE_PARAMETER || elementType == ElementType.STUDY)
            return true;
        else return false;
    }
    
    /**
     * Checks wheather this type of element belongs to an dataset
     */
    private static boolean isDatasetType(ElementType elementType){
        if(elementType == ElementType.DATASET || elementType == ElementType.DATASET_PARAMETER)
            return true;
        else return false;
    }
    
    /**
     * Checks wheather this type of element belongs to an datafile
     */
    private static boolean isDatafileType(ElementType elementType){
        if(elementType == ElementType.DATAFILE || elementType == ElementType.DATAFILE_PARAMETER)
            return true;
        else return false;
    }
    
    /**
     * Checks wheather this type of element is a root element, ie inv, df, ds
     */
    private static boolean isRootType(ElementType elementType){
        if(elementType == ElementType.DATAFILE || elementType == ElementType.INVESTIGATION || elementType == ElementType.DATASET)
            return true;
        else return false;
    }   
}
