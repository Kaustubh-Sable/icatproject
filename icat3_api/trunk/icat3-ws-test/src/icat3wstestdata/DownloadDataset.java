/*
 * DownloadDatafile.java
 *
 * Created on 17-Oct-2007, 15:30:17
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package icat3wstestdata;

import icat3wstest.Constants;
import javax.activation.DataHandler;
import javax.xml.ws.BindingProvider;
import javax.xml.ws.soap.SOAPBinding;

/**
 *
 * @author gjd37
 */
public class DownloadDataset {
    
    /** Creates a new instance of DownloadDatafile */
    public DownloadDataset() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
      
        
       try { // Call Web Service Operation
            data.ICATDataService service = new data.ICATDataService();
            data.ICATData port = service.getICATDataPort();
            SOAPBinding binding = (SOAPBinding)((BindingProvider)port).getBinding();
       
            System.out.println(binding.isMTOMEnabled());
       
            // TODO initialize WS operation arguments here
            java.lang.String sessionId = Constants.SID;
            java.lang.Long datasetId = 106L;
            // TODO process result here
            String result = port.downloadDataset(sessionId, datasetId);
            System.out.println("Result = "+result);
        } catch (Exception ex) {
            System.out.println(ex);
            // TODO handle custom exceptions here
        }
    }
    
}
