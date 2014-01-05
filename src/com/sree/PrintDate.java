/**
 * 
 */
package com.sree;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * @author sreenivasrao.m
 *
 */
public class PrintDate extends TagSupport {

	public int doStartTag() throws JspException {  
	    JspWriter out=pageContext.getOut();  
	    try{  
	        out.print(java.util.Calendar.getInstance().getTime());  
	    }catch(Exception e){e.printStackTrace();}  
	      
	    return SKIP_BODY;  
	}

}
