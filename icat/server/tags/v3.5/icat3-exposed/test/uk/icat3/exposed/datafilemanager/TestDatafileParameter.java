/*
 * Testicat.java
 *
 * Created on 07 March 2007, 12:42
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package uk.icat3.exposed.datafilemanager;

import java.util.Collection;
import java.util.Iterator;
import java.util.Random;
import junit.framework.JUnit4TestAdapter;

import org.apache.log4j.Logger;
import uk.icat3.exceptions.ICATAPIException;
import static org.junit.Assert.*;
import org.junit.Test;
import uk.icat3.entity.Parameter;
import uk.icat3.entity.DatafileParameter;
import uk.icat3.entity.IcatAuthorisation;
import uk.icat3.exceptions.InsufficientPrivilegesException;
import uk.icat3.exceptions.NoSuchObjectFoundException;
import uk.icat3.exceptions.ValidationException;
import uk.icat3.exposed.util.BaseTestClassTX;
import uk.icat3.exposed.util.TestUserLocal;
import uk.icat3.sessionbeans.manager.DatafileManagerBean;
import uk.icat3.sessionbeans.user.UserSessionLocal;
import uk.icat3.util.ElementType;
import uk.icat3.util.IcatRoles;
import uk.icat3.util.ParameterValueType;
import static uk.icat3.exposed.util.TestConstants.*;

/**
 * Opens a new entitymanager and tranaction for each method and tests for get/ remove/ delete/ modify/ insert
 * for data file paramters for valid and invalid users on the icat class
 *
 * @author gjd37
 */
public class TestDatafileParameter extends BaseTestClassTX {
    
    private static Logger log = Logger.getLogger(TestDatafileParameter.class);
    private Random random = new Random();
    
    private static DatafileManagerBean icat = new DatafileManagerBean();
    private static UserSessionLocal tul = new TestUserLocal();
    
    
    /**
     * Tests creating a file paramter
     */
    @Test
    public void addDatafileParameter() throws Exception {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        DatafileParameter validDatafileParameter  = getDatafileParameter(true, true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, validDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        
        DatafileParameter modified = em.find(DatafileParameter.class,datafileParameterInserted.getDatafileParameterPK() );
        
        checkDatafileParameter(modified);
        assertFalse("Deleted must be false", modified.isDeleted());
        assertNotNull("Must be numeric value", modified.getNumericValue());
        assertNull("String value must be null", modified.getStringValue());
    }
    
    /**
     * Tests modifying a data file parameter
     */
    @Test
    public void modifyDatafileParameter() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for modifying datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        String modifiedError = "unit test error "+random.nextInt();
        //create invalid datafileParameter, no name
        DatafileParameter duplicateDatafileParameter = getDatafileParameterDuplicate(true);
        duplicateDatafileParameter.setError(modifiedError);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        icat.modifyDataFileParameter(VALID_SESSION, duplicateDatafileParameter);
        
        DatafileParameter modified = em.find(DatafileParameter.class, duplicateDatafileParameter.getDatafileParameterPK() );
        
        assertEquals("error must be "+modifiedError+" and not "+modified.getError(), modified.getError(), modifiedError);
        
        checkDatafileParameter(modified);
        assertFalse("Deleted must be false", modified.isDeleted());
    }
    
    /**
     * Tests creating a duplicate data file paramter, should throw a ValidationException containing 'unique'
     */
    @Test(expected=ValidationException.class)
    public void addDuplicateDatafileParameter() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding invalid datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter duplicateDatafileParameter = getDatafileParameterDuplicate(true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, duplicateDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'unique'", ex.getMessage().contains("unique"));
            throw ex;
        }
    }
    
    /**
     * Tests deleting a data file parameter, marking as deleted Y
     */
    @Test
    public void deleteDatafileParameter() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for rmeoving datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        DatafileParameter validDatafileParameter  = getDatafileParameterDuplicate(true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        icat.deleteDataFileParameter(VALID_SESSION, validDatafileParameter.getDatafileParameterPK());
        
        DatafileParameter modified = em.find(DatafileParameter.class,validDatafileParameter.getDatafileParameterPK());
        
        checkDatafileParameter(modified);
        assertTrue("Deleted must be true", modified.isDeleted());
    }
    
    /**
     * Tests creating a data file parameter that has been marked as deleted, should undelete it
     */
    @Test(expected=ValidationException.class)
    public void addDeletedDatafileParameter() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding deleted datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter duplicateDatafileParameter = getDatafileParameterDuplicate(true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, duplicateDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'unique'", ex.getMessage().contains("unique"));
            
            throw ex;
        }
    }
    
    /**
     * Tests removing data file parameter from the DB
     */
    @Test
    public void removeDatafileParameter() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_ICAT_ADMIN_FOR_INVESTIGATION +"  for rmeoving datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter duplicateDatafileParameter = getDatafileParameterDuplicate(true);
        duplicateDatafileParameter.setDeleted(false);
        duplicateDatafileParameter.setCreateId(VALID_ICAT_ADMIN_FOR_INVESTIGATION);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        icat.removeDataFileParameter(VALID_SESSION_ICAT_ADMIN, duplicateDatafileParameter.getDatafileParameterPK());
        
        DatafileParameter modified = em.find(DatafileParameter.class,duplicateDatafileParameter.getDatafileParameterPK() );
        
        assertNull("DatafileParameter must not be found in DB "+duplicateDatafileParameter, modified);
        
    }
    
    /**
     * Tests creating a data file parameter for an invalid user, should throw InsufficientPrivilegesException containing
     * 'does not have permission' in the message
     */
    @Test(expected=InsufficientPrivilegesException.class)
    public void addDatafileParameterInvalidUser() throws ICATAPIException {
        log.info("Testing  session: "+ INVALID_SESSION +"  for adding datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        DatafileParameter validDatafileParameter  = getDatafileParameter(true, true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(INVALID_SESSION, validDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'does not have permission'", ex.getMessage().contains("does not have permission"));
            
            throw ex;
        }
    }
    
    /**
     * Tests creating a data file parameter for an invalid data file at does not exist, should throw NoSuchObjectFoundException containing
     * 'not found' in the message
     */
    @Test(expected=NoSuchObjectFoundException.class)
    public void addDatafileParameterInvalidDatafile() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding datafileParameter to invalid investigation Id");
        
        DatafileParameter validDatafileParameter  = getDatafileParameter(true,true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, validDatafileParameter, random.nextLong());
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'not found'", ex.getMessage().contains("not found"));
            
            throw ex;
        }
    }
    
    /**
     * Tests creating a data file parameter for an invalid data file id, should throw ValidationException containing
     * 'does not correspond' in the message
     */
    @Test(expected=ValidationException.class)
    public void addDatafileParameterInvalidDatafileId() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding datafileParameter to invalid investigation Id");
        
        DatafileParameter validDatafileParameter  = getDatafileParameter(true,true);
        validDatafileParameter.getDatafileParameterPK().setDatafileId(456787L);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, validDatafileParameter, VALID_INVESTIGATION_ID);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'does not correspond'", ex.getMessage().contains("does not correspond"));
            
            throw ex;
        }
    }
    
    /**
     * Tests creating a invalid data file parameter, should throw ValidationException containing
     * 'cannot be null' in the message
     */
    @Test(expected=ValidationException.class)
    public void addInvalidDatafileParameter() throws ICATAPIException, Exception {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding invalid datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter invalidDatafileParameter = getDatafileParameter(false, true);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, invalidDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'cannot be null'", ex.getMessage().contains("cannot be null"));
            throw ex;
        }catch (Exception ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage(), ex);
            throw ex;
        }
    }
    
    /**
     * Tests creating a invalid data file parameter, adding a string value to numeric value only, should throw ValidationException containing
     * 'string value only' in the message
     */
    @Test(expected=ValidationException.class)
    public void addInvalidDatafileParameter2() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding invalid datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter invalidDatafileParameter = getDatafileParameter(true, false);
        //string value only allowed
        invalidDatafileParameter.setNumericValue(45d);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, invalidDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'string value only'", ex.getMessage().contains("string value only"));
            throw ex;
        }
    }
    
    /**
     * Tests creating a invalid data file parameter, adding a numeric value to string value only, should throw ValidationException containing
     * 'numeric value only' in the message
     */
    @Test(expected=ValidationException.class)
    public void addInvalidDatafileParameter3() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for adding invalid datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter invalidDatafileParameter = getDatafileParameter(true, true);
        //string value only allowed
        invalidDatafileParameter.setStringValue("45d");
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            DatafileParameter datafileParameterInserted = icat.addDataFileParameter(VALID_SESSION, invalidDatafileParameter, VALID_DATASET_ID_FOR_INVESTIGATION);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'numeric value only'", ex.getMessage().contains("numeric value only"));
            throw ex;
        }
    }
    
    /**
     * Tests creating a file
     */
    //@Test(expected=InsufficientPrivilegesException.class)
    public void modifyDatafileParameterProps() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for modifying a props datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter propsDatafileParameter = getDatafileParameterDuplicate(false);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            icat.modifyDataFileParameter(VALID_SESSION, propsDatafileParameter);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'cannot be modified'", ex.getMessage().contains("cannot be modified"));
            throw ex;
        }
    }
    
    /**
     * Tests creating a file
     */
    //  @Test(expected=InsufficientPrivilegesException.class)
    public void deleteDatafileParameterProps() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for deleting a props datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter propsDatafileParameter = getDatafileParameterDuplicate(false);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            icat.deleteDataFileParameter(VALID_SESSION, propsDatafileParameter.getDatafileParameterPK());
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'cannot be modified'", ex.getMessage().contains("cannot be modified"));
            throw ex;
        }
    }
    
    /**
     * Tests creating a file
     */
    //  @Test(expected=InsufficientPrivilegesException.class)
    public void removeDatafileParameterProps() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for removing a props datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter propsDatafileParameter = getDatafileParameterDuplicate(false);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            icat.removeDataFileParameter(VALID_SESSION, propsDatafileParameter.getDatafileParameterPK());
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage());
            assertTrue("Exception must contain 'cannot be modified'", ex.getMessage().contains("cannot be modified"));
            throw ex;
        }
    }
    
    /**
     * Tests creating a file
     */
    @Test(expected=NoSuchObjectFoundException.class)
    public void removeDatafileParameterNoId() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for removing a datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter datafileParameter = getDatafileParameter(true, true);
        datafileParameter.setDatafileParameterPK(null);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            icat.removeDataFileParameter(VALID_SESSION, datafileParameter.getDatafileParameterPK());
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage(),ex);
            assertTrue("Exception must contain 'not found'", ex.getMessage().contains("not found"));
            throw ex;
        }
    }
    
    /**
     * Tests getting a file
     */
    @Test(expected=NoSuchObjectFoundException.class)
    public void deleteDatafileParameterNoId() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for deleting a datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter datafileParameter = getDatafileParameter(true, true);
        datafileParameter.setDatafileParameterPK(null);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            icat.deleteDataFileParameter(VALID_SESSION, datafileParameter.getDatafileParameterPK());
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage(),ex);
            assertTrue("Exception must contain 'not found'", ex.getMessage().contains("not found"));
            throw ex;
        }
    }
    
    /**
     * Tests modify a file
     */
    @Test(expected=NoSuchObjectFoundException.class)
    public void modifyDatafileParameterNoId() throws ICATAPIException {
        log.info("Testing  session: "+ VALID_SESSION +"  for deleting a datafileParameter to investigation Id: "+VALID_INVESTIGATION_ID);
        
        //create invalid datafileParameter, no name
        DatafileParameter datafileParameter = getDatafileParameter(true, true);
        datafileParameter.setDatafileParameterPK(null);
        
        //set entitymanager for each new method
        icat.setEntityManager(em);
        icat.setUserSession(tul);
        
        try {
            icat.modifyDataFileParameter(VALID_SESSION, datafileParameter);
        } catch (ICATAPIException ex) {
            log.warn("caught: "+ex.getClass()+" "+ex.getMessage(),ex);
            assertTrue("Exception must contain 'not found'", ex.getMessage().contains("not found"));
            throw ex;
        }
    }
    
    @Test
    public void removeParameter(){
        log.info("Removing parameters");
        Collection<Parameter> parameters = (Collection<Parameter>)executeListResultCmd("select d from Parameter d where d.createId NOT LIKE '%PROP%' order by d.modTime desc");
        log.info("Found: "+parameters.size());
        for(Parameter  parameter : parameters){
            if(parameter.getCreateId().equals("DATASET_PARAMETER_ADDED")){
                log.info("Removing added parameter: "+parameter );
                em.remove(parameter);
            }
        }
    }
    
    @Test //TODO the last method would not execute in TestingAll so added this dummy, seems to work
    public void dummy(){
        Collection<Parameter> parameters = (Collection<Parameter>)executeListResultCmd("select d from Parameter d where d.createId NOT LIKE '%PROP%' order by d.modTime desc");
        for(Parameter  parameter : parameters){
            if(parameter.getCreateId().equals("DATASET_PARAMETER_ADDED")){
                log.info("Removing added parameter: "+parameter );
                em.remove(parameter);
            }
        }
    }
    
    /**
     * gets a numeric or string paramter from DB, if not there creates one
     */
    static Parameter getParameter(boolean numeric){
        Parameter parameter = null;
        if(numeric){
            Collection<Parameter> parameters = (Collection<Parameter>)executeListResultCmd("select d from Parameter d where d.valueType = 'Y' AND d.isDatafileParameter = 'Y'");
            if(parameters.size() == 0){
                log.trace("Adding new parameter");
                Parameter param = new Parameter("units","name");
                param.setIsSampleParameter("N");
                param.setValueType(ParameterValueType.NUMERIC);
                param.setSearchable("Y");
                param.setIsDatasetParameter("N");
                param.setIsDatafileParameter("Y");
                param.setCreateId("DATAFILE_PARAMETER_ADDED");
                em.persist(param);
                parameter =  param;
            } else {
                parameter = parameters.iterator().next();
            }
        } else {
            Collection<Parameter> parameters = (Collection<Parameter>)executeListResultCmd("select d from Parameter d where d.valueType = 'N' AND d.isDatafileParameter = 'Y'");
            if(parameters.size() == 0){
                log.trace("Adding new parameter");
                Parameter param = new Parameter("units string","name");
                param.setIsSampleParameter("N");
                param.setIsDatasetParameter("N");
                param.setIsDatafileParameter("Y");
                param.setValueType(ParameterValueType.STRING);
                param.setSearchable("Y");
                param.setCreateId("DATAFILE_PARAMETER_ADDED");
                em.persist(param);
                parameter =  param;
            } else {
                parameter = parameters.iterator().next();
            }
        }
        log.trace(parameter);
        return parameter;
    }
    
    /**
     * Gets a datafile oparameter from the Db so that its a duplicate
     */
    static DatafileParameter getDatafileParameterDuplicate(boolean last){
        DatafileParameter datafileParameter = null;
        if(!last){
            Collection<DatafileParameter> datafileParameters = (Collection<DatafileParameter>)executeListResultCmd("select d from DatafileParameter d where d.facilityAcquired = 'Y'");
            datafileParameter = datafileParameters.iterator().next();
        } else {
            Collection<DatafileParameter> datafileParameters = (Collection<DatafileParameter>)executeListResultCmd("select d from DatafileParameter d where d.facilityAcquired = 'N' order by d.modTime desc");
            datafileParameter = datafileParameters.iterator().next();
        }
        log.trace(datafileParameter);
        return datafileParameter;
    }
    
    /**
     * Creates a datafile parameter which is either valid or not also that is numeric or not
     */
    static DatafileParameter getDatafileParameter(boolean valid, boolean numeric){
        Parameter parameter = getParameter(numeric);
        if(valid){
            //create valid datafileParameter
            DatafileParameter datafileParameter = new DatafileParameter(parameter.getParameterPK().getUnits(),parameter.getParameterPK().getName(), VALID_SAMPLE_ID_FOR_INVESTIGATION_ID);
            if(numeric){
                datafileParameter = new DatafileParameter("pulses","good_frames", VALID_SAMPLE_ID_FOR_INVESTIGATION_ID);
                
                datafileParameter.setNumericValue(45d);
            } else {
                datafileParameter = new DatafileParameter("yyyy-MM-dd HH:mm:ss","finish_date", VALID_SAMPLE_ID_FOR_INVESTIGATION_ID);
                
                datafileParameter.setStringValue("string value");
            }
            datafileParameter.getDatafileParameterPK().setDatafileId(VALID_DATA_FILE_ID);
            return datafileParameter;
        } else {
            //create invalid datafileParameter
            //(parameter.getParameterPK().getUnits(),parameter.getParameterPK().getName(), VALID_SAMPLE_ID_FOR_INVESTIGATION_ID);
            DatafileParameter datafileParameter = new DatafileParameter();
            return datafileParameter;
        }
    }
    
    /**
     * Checks that the data file parameter is valid in the DB
     */
    private void checkDatafileParameter(DatafileParameter datafileParameter){
        assertNotNull("PK cannot be null", datafileParameter.getDatafileParameterPK());
        assertNotNull("PK units cannot be null", datafileParameter.getDatafileParameterPK().getUnits());
        assertNotNull("PK name cannot be null", datafileParameter.getDatafileParameterPK().getName());
        
        assertEquals("Create id must be "+VALID_FACILITY_USER_FOR_INVESTIGATION, datafileParameter.getCreateId(), VALID_FACILITY_USER_FOR_INVESTIGATION);
        assertEquals("Mod id must be "+VALID_FACILITY_USER_FOR_INVESTIGATION, datafileParameter.getModId(), VALID_FACILITY_USER_FOR_INVESTIGATION);
        //assertEquals("Datafile id must be "+VALID_INVESTIGATION_ID, datafileParameter.getDatafileParameterPK().getDatafileId(), VALID_INVESTIGATION_ID);
        
    }
    
    public static junit.framework.Test suite(){
        return new JUnit4TestAdapter(TestDatafileParameter.class);
    }
}
