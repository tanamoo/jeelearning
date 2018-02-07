<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加Cookie</title>
</head>
<body>
<%
//获取请求参数
String name = request.getParameter("name");
//以获取到的请求参数为值，创建一个cookie对象
Cookie c = new Cookie("username",name);
//设置Cookie对象的生命期限
c.setMaxAge(24*3600);
//向客户端增加Cookie对象
response.addCookie(c);
%>
</body>
</html>