package com.sree;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport{

	public int doStartTag(){
		JspWriter jw = pageContext.getOut();
		try {
			jw.print(Calendar.getInstance().getTime());
		} catch (IOException e) {
			System.out.println(e);
		}
		return SKIP_BODY;
	}
	
}
