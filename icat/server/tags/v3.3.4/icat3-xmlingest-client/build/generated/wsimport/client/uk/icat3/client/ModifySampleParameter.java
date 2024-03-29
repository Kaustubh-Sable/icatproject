
package uk.icat3.client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for modifySampleParameter complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="modifySampleParameter">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="sessionId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="sampleParameter" type="{client.icat3.uk}sampleParameter" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "modifySampleParameter", propOrder = {
    "sessionId",
    "sampleParameter"
})
public class ModifySampleParameter {

    protected String sessionId;
    protected SampleParameter sampleParameter;

    /**
     * Gets the value of the sessionId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSessionId() {
        return sessionId;
    }

    /**
     * Sets the value of the sessionId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSessionId(String value) {
        this.sessionId = value;
    }

    /**
     * Gets the value of the sampleParameter property.
     * 
     * @return
     *     possible object is
     *     {@link SampleParameter }
     *     
     */
    public SampleParameter getSampleParameter() {
        return sampleParameter;
    }

    /**
     * Sets the value of the sampleParameter property.
     * 
     * @param value
     *     allowed object is
     *     {@link SampleParameter }
     *     
     */
    public void setSampleParameter(SampleParameter value) {
        this.sampleParameter = value;
    }

}
