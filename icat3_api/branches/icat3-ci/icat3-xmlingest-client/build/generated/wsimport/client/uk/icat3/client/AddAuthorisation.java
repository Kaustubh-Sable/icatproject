
package uk.icat3.client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for addAuthorisation complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="addAuthorisation">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="sessionId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="toAddFedId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="toAddRole" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="elementId" type="{http://www.w3.org/2001/XMLSchema}long" minOccurs="0"/>
 *         &lt;element name="elementType" type="{client.icat3.uk}elementType" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "addAuthorisation", propOrder = {
    "sessionId",
    "toAddFedId",
    "toAddRole",
    "elementId",
    "elementType"
})
public class AddAuthorisation {

    protected String sessionId;
    protected String toAddFedId;
    protected String toAddRole;
    protected Long elementId;
    protected ElementType elementType;

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
     * Gets the value of the toAddFedId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getToAddFedId() {
        return toAddFedId;
    }

    /**
     * Sets the value of the toAddFedId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setToAddFedId(String value) {
        this.toAddFedId = value;
    }

    /**
     * Gets the value of the toAddRole property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getToAddRole() {
        return toAddRole;
    }

    /**
     * Sets the value of the toAddRole property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setToAddRole(String value) {
        this.toAddRole = value;
    }

    /**
     * Gets the value of the elementId property.
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    public Long getElementId() {
        return elementId;
    }

    /**
     * Sets the value of the elementId property.
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setElementId(Long value) {
        this.elementId = value;
    }

    /**
     * Gets the value of the elementType property.
     * 
     * @return
     *     possible object is
     *     {@link ElementType }
     *     
     */
    public ElementType getElementType() {
        return elementType;
    }

    /**
     * Sets the value of the elementType property.
     * 
     * @param value
     *     allowed object is
     *     {@link ElementType }
     *     
     */
    public void setElementType(ElementType value) {
        this.elementType = value;
    }

}
