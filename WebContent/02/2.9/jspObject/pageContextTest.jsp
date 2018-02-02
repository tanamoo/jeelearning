<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pageContext测试</title>
</head>
<body>
	<%
		//使用pageContext设定属性，该属性默认在page范围内
		pageContext.setAttribute("page", "hello");
	    //使用request设定属性，该属性默认在request范围内
	    request.setAttribute("request","hello");
	    //使用pageContext将属性设置在request范围内
	    pageContext.setAttribute("request2", "hello", pageContext.REQUEST_SCOPE);
	    //使用session对象将属性设置下session范围内
	    session.setAttribute("session", "hello");
	    //使用pageContext对象将属性设置在session范围内
	    pageContext.setAttribute("session2", "hello", pageContext.SESSION_SCOPE);
	    //使用application将属性设置在application范围内
	    application.setAttribute("application", "hello");
	    //使用pageContext对象将属性设置在application范围内
	    pageContext.setAttribute("application2", "hello", pageContext.APPLICATION_SCOPE);
	    
	    
	    
	    //下面取出各属性的范围
	    out.println("page变量所在范围：" + pageContext.getAttributesScope("page") + "<br>");
	    out.println("request变量所在范围：" + pageContext.getAttributesScope("request") + "<br>");
	    out.println("request2变量所在范围：" + pageContext.getAttributesScope("request2") + "<br>");
	    out.println("session变量所在范围：" + pageContext.getAttributesScope("session") + "<br>");
	    out.println("session变量所在范围：" + pageContext.getAttributesScope("session2") + "<br>");
	    out.println("application变量所在范围：" + pageContext.getAttributesScope("application") + "<br>");
	    out.println("application2变量所在范围：" + pageContext.getAttributesScope("application2") + "<br>");
	 %>
</body>
</html>