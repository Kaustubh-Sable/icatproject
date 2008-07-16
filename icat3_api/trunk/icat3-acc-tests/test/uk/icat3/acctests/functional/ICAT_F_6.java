/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.icat3.acctests.functional;

import java.util.ArrayList;
import java.util.List;
import javax.xml.ws.BindingProvider;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import static uk.icat3.acctests.util.Constants.*;
import static org.junit.Assert.*;
import org.junit.Test;
import uk.icat3.acctests.util.Helper;
import static uk.icat3.client.InvestigationInclude.*;

/**
 *
 * @author df01
 * This class will test the ability of the API to provide a user with
 * a correctly formatted download link (for multple datafiles) for 
 * data.isis.  Actual download will not be tested since this is outside 
 * of the remit of Devigo.
 * 
 */
public class ICAT_F_6 {
    
    private static uk.icat3.client.admin.ICATAdminService adminService = null;
    private static uk.icat3.client.admin.ICATAdmin adminPort = null;
    private static uk.icat3.client.ICATService service = null;
    private static uk.icat3.client.ICAT port = null;        
    private java.lang.String sessionId = null;    
    private static List<String> keywords = null;
    
    public ICAT_F_6() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
        try {    // Call Web Service Operation
            adminService = new uk.icat3.client.admin.ICATAdminService();
            adminPort = adminService.getICATAdminPort();
            
            ((BindingProvider)adminPort).getRequestContext().put(BindingProvider.USERNAME_PROPERTY, ICAT_ADMIN_USER);
            ((BindingProvider)adminPort).getRequestContext().put(BindingProvider.PASSWORD_PROPERTY, ICAT_ADMIN_PASSWORD);  
            
            service = new uk.icat3.client.ICATService();
            port = service.getICATPort();
            
            keywords = new ArrayList<String>();
            keywords.add(ICAT_F_1_KEYWORD1);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }   
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
        adminService = null;
        adminPort = null;
        service = null;
        port = null;
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
        port.logout(sessionId);
        sessionId = null;
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    
    @Test
    public void downloadMultipleDatafiles() {
        try {  
            // TODO process result here
            sessionId = adminPort.loginAdmin(USER1);            
            if (sessionId == null) assertTrue(false);                        
            System.out.println("sessionId: " + sessionId);
                                    
            //get armstrong investigation
            List<uk.icat3.client.Investigation> investigations = port.searchByKeywords(sessionId, keywords);        
            
            //if no results returned, don't bother do anything else
            if (investigations.size() == 0) assertTrue(false);
            
            uk.icat3.client.Investigation i = port.getInvestigationIncludes(sessionId, investigations.get(0).getId(), DATASETS_AND_DATAFILES);            
            System.out.println("name: " + i.getTitle());            
            
            uk.icat3.client.Dataset dataset = i.getDatasetCollection().get(0);
            
            List<uk.icat3.client.Datafile> datafiles = dataset.getDatafileCollection();
            
            //populate list of datafile ids
            List<Long> datafileIds = new ArrayList<Long>();
            for (uk.icat3.client.Datafile datafile : datafiles) {
                datafileIds.add(datafile.getId());
            }//end for            
            
            String url = port.downloadDatafiles(sessionId, datafileIds);
            //if we get here without exception then all is OK!
            assertTrue(Helper.isEmpty(url));
                                  
        } catch (Exception ex) {
            ex.printStackTrace();
        }                        
    }
    
    
    @Test
    public void downloadDataset() {
        try {  
            // TODO process result here
            sessionId = adminPort.loginAdmin(USER1);            
            if (sessionId == null) assertTrue(false);                        
            System.out.println("sessionId: " + sessionId);
                                    
            //get armstrong investigation
            List<uk.icat3.client.Investigation> investigations = port.searchByKeywords(sessionId, keywords);        
            
            //if no results returned, don't bother do anything else
            if (investigations.size() == 0) assertTrue(false);
            
            uk.icat3.client.Investigation i = port.getInvestigationIncludes(sessionId, investigations.get(0).getId(), DATASETS_AND_DATAFILES);            
            System.out.println("name: " + i.getTitle());            
            
            //check that all requested objects are contained within search result
            Long datasetId = i.getDatasetCollection().get(0).getId();
                        
            String url = port.downloadDataset(sessionId, datasetId);
            
            assertTrue(Helper.isEmpty(url));
                                  
        } catch (Exception ex) {
            ex.printStackTrace();
        }
                        
    }

}