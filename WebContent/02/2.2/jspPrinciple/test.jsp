<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<TITLE>第二个JSP页面</TITLE>
</HEAD>
<BODY>
	<!--以下是Java脚本-->
	<%for(int i = 0 ; i < 7 ; i++ )
	{
	out.println("<font size='" + i +"'>");
	%>
Hello World!</font>
<br>
<%}%>
</BODY>
</HTML>