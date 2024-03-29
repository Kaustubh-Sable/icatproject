/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.icat3.acctests.functional;

import java.util.ArrayList;
import java.util.List;
import javax.xml.ws.BindingProvider;
import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import static uk.icat3.acctests.util.Constants.*;
import uk.icat3.acctests.util.Helper;
import uk.icat3.client.DownloadInfo;
import static uk.icat3.client.InvestigationInclude.*;
/**
 *
 * @author df01
 * This class will test the ability of the API to provide a user with
 * a correctly formatted download link (single datafile) for data.isis.  
 * Actual download will not be tested since this is outside of the 
 * remit of Devigo.
 * 
 */
public class ICAT_F_5 {
    
    private static Logger log = Logger.getLogger(ICAT_F_5.class);
    private static uk.icat3.client.admin.ICATAdminService adminService = null;
    private static uk.icat3.client.admin.ICATAdmin adminPort = null;
    private static uk.icat3.client.ICATService service = null;
    private static uk.icat3.client.ICAT port = null;            
    private java.lang.String sessionId = null;    
    private static List<String> keywords = null;

    public ICAT_F_5() {
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

    @Test
    public void downloadDatafile() {
        try {  
            
            log.info("ICAT_F_5 #1 Testing download datafile with fedid '" + USER1 + "'...");            
            sessionId= adminPort.loginAdmin(USER1);  
            
            //make sure session id not null
            log.info("ICAT_F_5 #1 SessionId is '" + sessionId + "'");
            assertTrue(sessionId != null);                        
                                    
            //search for data
            List<uk.icat3.client.Investigation> investigations = port.searchByKeywords(sessionId, keywords);        
                        
            //if no results returned --> fail
            assertTrue(investigations.size() > 0); 
            
            //get more detail
            uk.icat3.client.Investigation i = port.getInvestigationIncludes(sessionId, investigations.get(0).getId(), DATASETS_AND_DATAFILES);            
            log.info("ICAT_F_5 #1 Investigation#" + i.getId() + ", Title: '" + i.getTitle() + "'");  
            
            //drill down to datafile level
            uk.icat3.client.Dataset dataset = i.getDatasetCollection().get(0);            
            uk.icat3.client.Datafile datafile = dataset.getDatafileCollection().get(0);

            //get download string
            String url = port.downloadDatafile(sessionId, datafile.getId());
            log.info("ICAT_F_5 #1 Download URL for datafile #" + datafile.getName() + ", is '" + url + "'");  
                                    
            //ensure that download string is not empty            
            assertTrue(!Helper.isEmpty(url));
            
            //ensure that download string conforms to spec
            String dataStr = ICAT_DATA_URL + sessionId + "&" + ICAT_DOWNLOAD_DATAFILE + "&datafileId=" + datafile.getId();
            assertTrue(dataStr.equalsIgnoreCase(url));
            
            List<Long> ids = new ArrayList<Long>();
            ids.add(datafile.getId());
            
            //check to make sure that user can download data
            log.info("ICAT_F_5 #1 Checking download permissions for user...");  
            DownloadInfo di = port.checkDatafileDownloadAccess(sessionId, ids);            
            assertTrue(!Helper.isEmpty(di.getUserId()));
            assertTrue(di.getUserId().equals(USER1));
            assertNotNull(di.getDatafileNames());    
            assertTrue(((String)di.getDatafileNames().get(0)).equalsIgnoreCase(datafile.getName()));
            
            log.info("ICAT_F_5 #1 PASSED");  
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }  
    
    }

}