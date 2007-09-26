/*
 * ICATSingleton.java
 *
 * Created on 25 June 2007, 10:33
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package icat3wstestother;

import icat3wstest.*;
import ss.*;
import javax.xml.ws.BindingProvider;
import static icat3wstest.Constants.*;

/**
 *
 * @author gjd37
 */
public class ICATAdminSingleton {
    
    private static ICATAdmin icatPort = new ICATAdminService().getICATAdminPort();
    
    /** Creates a new instance of ICATSingleton */
    private ICATAdminSingleton() {
    }
    
    public static ICATAdmin getInstance(){
        ((BindingProvider)icatPort).getRequestContext().put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, END_POINT_ADMIN_ADDRESS);        
        ((BindingProvider)icatPort).getRequestContext().put(BindingProvider.USERNAME_PROPERTY, "testing");        
        ((BindingProvider)icatPort).getRequestContext().put(BindingProvider.PASSWORD_PROPERTY, "help");        
      
        return icatPort;
    }
    
}