
package uk.icat3.client;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Logger;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.4-b01-
 * Generated source version: 2.1
 * 
 */
@WebServiceClient(name = "ICATISISService", targetNamespace = "client.icat3.uk", wsdlLocation = "https://facilities01.esc.rl.ac.uk:8182/ICATISISService/ICAT?wsdl")
public class ICATISISService
    extends Service
{

    private final static URL ICATISISSERVICE_WSDL_LOCATION;
    private final static Logger logger = Logger.getLogger(uk.icat3.client.ICATISISService.class.getName());

    static {
        URL url = null;
        try {
            URL baseUrl;
            baseUrl = uk.icat3.client.ICATISISService.class.getResource(".");
            url = new URL(baseUrl, "https://facilities01.esc.rl.ac.uk:8182/ICATISISService/ICAT?wsdl");
        } catch (MalformedURLException e) {
            logger.warning("Failed to create URL for the wsdl Location: 'https://facilities01.esc.rl.ac.uk:8182/ICATISISService/ICAT?wsdl', retrying as a local file");
            logger.warning(e.getMessage());
        }
        ICATISISSERVICE_WSDL_LOCATION = url;
    }

    public ICATISISService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public ICATISISService() {
        super(ICATISISSERVICE_WSDL_LOCATION, new QName("client.icat3.uk", "ICATISISService"));
    }

    /**
     * 
     * @return
     *     returns ICAT
     */
    @WebEndpoint(name = "ICATPort")
    public ICAT getICATPort() {
        return super.getPort(new QName("client.icat3.uk", "ICATPort"), ICAT.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns ICAT
     */
    @WebEndpoint(name = "ICATPort")
    public ICAT getICATPort(WebServiceFeature... features) {
        return super.getPort(new QName("client.icat3.uk", "ICATPort"), ICAT.class, features);
    }

}
