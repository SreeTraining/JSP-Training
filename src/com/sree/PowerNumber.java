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
public class PowerNumber extends TagSupport {

	private int number;
	private int power;
	private static int counter;
	private static int result = 1;

	public void setPower(int power) {
		this.power = power;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

	public int doAfterBody() {
		counter++;
		result *= number;
		if (counter == power)
			return SKIP_BODY;
		else
			return EVAL_BODY_AGAIN;
	}

	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.print(result);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return EVAL_PAGE;
	}

}
