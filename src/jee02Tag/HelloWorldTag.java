package jee02Tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloWorldTag extends SimpleTagSupport {
	//重写doTag方法，该方法在标签结束时生成页面内容
	public void doTag() throws JspException, IOException
	{
		//获取页面输出流，并输出字符串
		getJspContext().getOut().write("Hello World!");
	}

} 

