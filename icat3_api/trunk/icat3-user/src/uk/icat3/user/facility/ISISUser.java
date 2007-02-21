package uk.icat3.user.facility;

import com.cclrc.ral.isis.userdb.session.userdb.PersonDetailsDTO;
import com.cclrc.ral.isis.userdb.session.userdb.UserDBFacade;
import com.cclrc.ral.isis.userdb.session.userdb.UserDBFacadeHome;
import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import uk.icat3.user.User;
import uk.icat3.user.UserDetails;
import uk.icat3.user.exceptions.LoginException;
import uk.icat3.user.exceptions.NoSuchUserException;

/*
 * ISISUser.java
 *
 * Created on 20 February 2007, 16:25
 *
 * ISIS implementation of User.java interface.  This class contacts
 * the ISIS user database via RMI calls across the network.  Please
 * update the Context.PROVIDER_URL in static method 'getInitialContext()'
 * at the bottom of the class.
 *
 * @author df01
 * @version 1.0
 */
public class ISISUser implements User {
    
    UserDBFacade userDBFacade;
    
    /** Creates a new instance of ISISUser */
    public ISISUser() throws LoginException {
        try {
            Context context = getInitialContext();
            UserDBFacadeHome userDBFacadeHome = (UserDBFacadeHome)PortableRemoteObject.narrow(context.lookup("ejb/userdb/UserDBFacade"), UserDBFacadeHome.class);                
            userDBFacade = userDBFacadeHome.create();      
        } catch (Exception e) {
            e.printStackTrace();
            throw new LoginException("Unable to establish connection to ISIS User database");
        }//end try/catch
    }      
    
    public String getUserIdFromSessionId (String sessionId) throws LoginException {        
        Long userNum = null;
        try {
            userNum = userDBFacade.getUserNumberFromSessionId(sessionId);
            if (userNum == null) throw new LoginException();
        } catch (Exception e) {
            e.printStackTrace();
            throw new LoginException("Unable to retrieve userid/distinguished name from ISIS user database using sessionId '" + sessionId + "'. Please try logging in again." );
        }//end try/catch
       return userNum.toString(); 
    }
    
    public String login (String username, String password) throws LoginException {              
      String token = null;      
      try {          
          token = userDBFacade.login(username, password);                    
      } catch (Exception e) {          
          throw new LoginException("Invalid login credentials provided by user");
      }//end try/catch
      
       return token;
    }
    
    public void logout (String sessionId) {
        try {
            userDBFacade.logout(sessionId);
        } catch (Exception e) {
            e.printStackTrace();
        }//end try/catch
    }
    
    public UserDetails getUserDetails(String sessionId, String user) throws LoginException, NoSuchUserException {
        UserDetails details = new UserDetails();
        
        try {
            
            Long userNum = userDBFacade.getUserNumberFromSessionId(sessionId);
            if (userNum == null) throw new LoginException();
            
            PersonDetailsDTO dto = userDBFacade.getPersonDetails(sessionId, new Long(user));
            details.setTitle(dto.getTitle());
            details.setInitial(dto.getInitials());
            details.setFirstName(dto.getFirstNameKnownAs());
            details.setLastName(dto.getFamilyName());
            details.setDepartment(dto.getDeptName());
            details.setInstitution(dto.getOrgName());
            
        } catch (LoginException le) {            
            throw new LoginException("An error occured while trying to retrieve UserDetails from ISIS user database for user# " + user + " with sessionId# " + sessionId);
        } catch (Exception e) {
            throw new NoSuchUserException("User could not be found in ISIS user database");
        }//end try/catch
        
        return details;
    }
    
    private static Context getInitialContext() throws NamingException {
        Hashtable env = new Hashtable();        
        env.put(Context.INITIAL_CONTEXT_FACTORY, "org.jnp.interfaces.NamingContextFactory");        
        env.put(Context.PROVIDER_URL, "localhost");        
        env.put(Context.URL_PKG_PREFIXES, "org.jboss.naming:org.jnp.interfaces" );
        return new InitialContext(env);
  }
}
