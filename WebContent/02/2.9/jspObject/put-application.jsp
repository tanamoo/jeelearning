<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>application测试</title>
</head>
<body>
<!-- JSP声明 -->
<%!
int i;
%>
<!-- 将i值自动加入application的变量内 -->
<%
application.setAttribute("count", String.valueOf(++i));
%>
<!-- 输出i值 -->
<%=i %>
</body>
</html>