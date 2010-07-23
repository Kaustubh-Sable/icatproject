/*
 * This code is developed in Institut Laue-Langevin (France).
 * Its goal is the implementation of parameter search into ICAT Web Service
 * 
 * Created on 23 juil. 2010
 */

package fr.ill.parametersearch.util;

import fr.ill.parametersearch.ParameterType;
import uk.icat3.entity.Parameter;

/**
 * This class contains the information about a parameter which is going to
 * be used into a parameter search
 * 
 * @author cruzcruz
 */
public class ParameterValued {
    /** JQPL field name for NUMERIC_VALUE */
    private static String NUMERIC_VALUE = "numericValue";
    /** JQPL field name for STRING_VALUE */
    private static String STRING_VALUE = "stringValue";
    /** Type of parameter (dataset, datafile, sample, ALL) */
    private ParameterType type;
    /** Parameter to compare */
    private Parameter param;

    public ParameterValued() {
    }

    public ParameterValued (Parameter param) {
        this.param = param;
    }

    public ParameterValued(ParameterType type) {
        this.type = type;
    }

    public ParameterValued(ParameterType type, Parameter param) {
        this.type = type;
        this.param = param;
    }

    /**
     * Return the JPQL field name of the parameter value.
     *
     * @return Field name
     */
    public String getValueType() {
        if (getParameter().isNumeric())
            return NUMERIC_VALUE;
        return STRING_VALUE;
    }



    ///////////////////////////////////////////////////////////////////////////
    //                               GETTERS and SETTERS                     //
    ///////////////////////////////////////////////////////////////////////////


    public Parameter getParameter() {
        return param;
    }

    public void setParam(Parameter param) {
        this.param = param;
    }

    public ParameterType getType() {
        return type;
    }

    public void setType(ParameterType type) {
        this.type = type;
    }


}
