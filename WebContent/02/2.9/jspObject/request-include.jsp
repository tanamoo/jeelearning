<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request对象执行include测试</title>
</head>
<body>
<%
//request对象执行include
request.getRequestDispatcher("/02/2.2/jspPrinciple/scriptlet.jsp").include(request, response);
//request对象执行forward
request.getRequestDispatcher("/02/2.9/jspObject/draw.jsp").include(request, response);
%>
</body>
</html>