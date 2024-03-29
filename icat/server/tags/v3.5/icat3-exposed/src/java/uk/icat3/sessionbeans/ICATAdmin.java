/*
 * AllOperationsBean.java
 *
 * Created on 17 May 2007, 10:58
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package uk.icat3.sessionbeans;

import javax.annotation.security.DeclareRoles;
import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.interceptor.ExcludeClassInterceptors;
import javax.interceptor.Interceptors;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.apache.log4j.Logger;
import uk.icat3.entity.Parameter;
import uk.icat3.exceptions.NoSuchUserException;
import uk.icat3.exceptions.SessionException;
import uk.icat3.exceptions.ValidationException;
import uk.icat3.sessionbeans.manager.ParameterManagerLocal;
import uk.icat3.user.UserDetails;

/**
 * This adds all the Admin methods to the ICAT methods and protects them with the role 'admin'
 *
 * @author gjd37
 */
@Stateless()
//this is proteted from normal use because it has admin functions in it
//@DeclareRoles("admin")
@RolesAllowed("admin")
@WebService(serviceName="ICATAdminService", targetNamespace="admin.client.icat3.uk")
//this interceptor check no nulls passed in and logs the method arguments
@Interceptors(ArgumentValidator.class)
@TransactionAttribute(TransactionAttributeType.NOT_SUPPORTED)
public class ICATAdmin extends EJBObject /*implements ICATLocal*/ {
    
    static Logger log = Logger.getLogger(ICATAdmin.class);
    ///////////////////////  Inject all the EJBs   //////////////////////////
    @EJB
    protected ParameterManagerLocal parameterManagerLocal;
    /** Creates a new instance of AllOperationsBean */
    public ICATAdmin() {
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////   Session  ///////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    ///////////////////////////     UserSession methods  /////////////////////////////////////////    
    @WebMethod(operationName="loginAdmin")
    @ExcludeClassInterceptors
    //@RequestWrapper(className="uk.icat3.sessionbeans.jaxws.loginAdmin")
    //@ResponseWrapper(className="uk.icat3.sessionbeans.jaxws.loginAdminResponse")
    public String loginAdmin(/*@WebParam(name="adminUsername") String adminUsername, @WebParam(name="AdminPassword") String AdminPassword, */ @WebParam(name="runAsUserFedId") String runAsUserFedId) throws SessionException{
        //Admin protected by GF authentication
        //return user.login(adminUsername, AdminPassword, runAsUser);
        return user.login("admin", "password" , runAsUserFedId);        
    }
    
    //TODO not yet supported
    /*ebMethod(operationName="loginCredentials")
    @RequestWrapper(className="uk.icat3.sessionbeans.jaxws.loginCredentials")
    @ResponseWrapper(className="uk.icat3.sessionbeans.jaxws.loginCredentialsResponse")
    public String login(@WebParam(name="credential") String credential) throws SessionException{
        return user.login(credential);
    }*/
    
    //@WebMethod(operationName="getUserDetailsAdmin")
   /** public UserDetails getUserDetails(@WebParam(name="sessionId") String sessionId, @WebParam(name="usersName") String usersName) throws SessionException, NoSuchUserException{
        return this.user.getUserDetails(sessionId, usersName);
    } */
    ///////////////////////////     End of UserSession methods  //////////////////////////////////
    
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////   All Manager   ///////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////
    
    ///////////////////////////     Investigation Manager methods  /////////////////////////////////////////
    
    
    
    ///////////////////////////     End of Investigation Manager methods  /////////////////////////////////////////
    
    ///////////////////////////     Dataset Manager methods  /////////////////////////////////////////
    
    
    ///////////////////////////     End of Dataset Manager methods  /////////////////////////////////////////
    
    ///////////////////////////     Datafile Manager methods  /////////////////////////////////////////
    
    
    ///////////////////////////     End of Datafile Manager methods  /////////////////////////////////////////
    ///////////////////////////     Parameter Manager methods  /////////////////////////////////////////
    @WebMethod
    public void createParameter(@WebParam(name = "sessionId")String sessionId, @WebParam(name = "parameter")Parameter param) throws ValidationException, SessionException{
        //Admin protected by GF authentication
        parameterManagerLocal.createParameter(sessionId, param);
    }

    @WebMethod
    @ExcludeClassInterceptors
    public Parameter updateParameter(@WebParam(name = "sessionId")String sessionId, @WebParam(name = "parameterName")String name, @WebParam(name = "parameterUnits")String units, @WebParam(name = "isSearchable")boolean isSearchable, @WebParam(name = "isDatasetParameter")boolean isDatasetParameter, @WebParam(name = "isDatafileParameter")boolean isDatafileParameter, @WebParam(name = "isSampleParameter")boolean isSampleParameter) throws ValidationException, SessionException {
        //Admin protected by GF authentication
        return parameterManagerLocal.updateParameter(sessionId, name,units,isSearchable,isDatasetParameter,isDatafileParameter,isSampleParameter);
    }

    @WebMethod
    public void removeParameter(@WebParam(name = "sessionId")String sessionId, @WebParam(name = "parameterName")String name,@WebParam(name = "parameterUnits")String units) throws ValidationException, SessionException{
        //Admin protected by GF authentication
        parameterManagerLocal.removeParameter(sessionId, name, units);
    }
    ///////////////////////////     End of Parameter Manager methods  /////////////////////////////////////////
    
}
