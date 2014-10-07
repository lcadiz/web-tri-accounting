package com.tri.erp.spring.commons.helpers;

import com.tri.erp.spring.commons.GlobalConstant;

import java.util.HashMap;

/**
 * Created by TSI Admin on 10/7/2014.
 */
public class ReportUtil {
    public static HashMap setupSharedReportHeaders(HashMap parameters) {

        parameters.put("COMP_NAME", "Your name");
        parameters.put("COMP_ADDR", "Your address");
        parameters.put("COMP_CONTACT", "Your contact");
        parameters.put("LOGO_PATH", GlobalConstant.REPORT_LOGO_PATH);

        return parameters;
    }
}
