package com.sree;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class CubeNumber extends TagSupport {

	private int number;

	public void setNumber(int number) {
		this.number = number;
	}
	
	public int doStartTag(int number){
		JspWriter jw = pageContext.getOut();
		try {
			jw.print(number*number*number);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	
}
