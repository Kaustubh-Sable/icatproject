//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vhudson-jaxb-ri-2.1-382 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2007.06.29 at 02:16:17 PM BST 
//


package uk.icat3.jaxb.gen;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Dataset complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Dataset">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="name" type="{}str255"/>
 *         &lt;element name="dataset_type" type="{}Dataset_Type"/>
 *         &lt;element name="dataset_status" type="{}Dataset_Status" minOccurs="0"/>
 *         &lt;element name="description" type="{}str4000" minOccurs="0"/>
 *         &lt;element name="sample" type="{}Sample" minOccurs="0"/>
 *         &lt;element name="datafile" type="{}Datafile" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="parameter" type="{}Parameter" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Dataset", propOrder = {
    "name",
    "datasetType",
    "datasetStatus",
    "description",
    "sample",
    "datafile",
    "parameter"
})
public class Dataset {

    @XmlElement(required = true)
    protected String name;
    @XmlElement(name = "dataset_type", required = true)
    protected DatasetType datasetType;
    @XmlElement(name = "dataset_status")
    protected DatasetStatus datasetStatus;
    protected String description;
    protected Sample sample;
    protected List<Datafile> datafile;
    protected List<Parameter> parameter;

    /**
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setName(String value) {
        this.name = value;
    }

    /**
     * Gets the value of the datasetType property.
     * 
     * @return
     *     possible object is
     *     {@link DatasetType }
     *     
     */
    public DatasetType getDatasetType() {
        return datasetType;
    }

    /**
     * Sets the value of the datasetType property.
     * 
     * @param value
     *     allowed object is
     *     {@link DatasetType }
     *     
     */
    public void setDatasetType(DatasetType value) {
        this.datasetType = value;
    }

    /**
     * Gets the value of the datasetStatus property.
     * 
     * @return
     *     possible object is
     *     {@link DatasetStatus }
     *     
     */
    public DatasetStatus getDatasetStatus() {
        return datasetStatus;
    }

    /**
     * Sets the value of the datasetStatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link DatasetStatus }
     *     
     */
    public void setDatasetStatus(DatasetStatus value) {
        this.datasetStatus = value;
    }

    /**
     * Gets the value of the description property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets the value of the description property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescription(String value) {
        this.description = value;
    }

    /**
     * Gets the value of the sample property.
     * 
     * @return
     *     possible object is
     *     {@link Sample }
     *     
     */
    public Sample getSample() {
        return sample;
    }

    /**
     * Sets the value of the sample property.
     * 
     * @param value
     *     allowed object is
     *     {@link Sample }
     *     
     */
    public void setSample(Sample value) {
        this.sample = value;
    }

    /**
     * Gets the value of the datafile property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the datafile property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDatafile().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Datafile }
     * 
     * 
     */
    public List<Datafile> getDatafile() {
        if (datafile == null) {
            datafile = new ArrayList<Datafile>();
        }
        return this.datafile;
    }

    /**
     * Gets the value of the parameter property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the parameter property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getParameter().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Parameter }
     * 
     * 
     */
    public List<Parameter> getParameter() {
        if (parameter == null) {
            parameter = new ArrayList<Parameter>();
        }
        return this.parameter;
    }

}
