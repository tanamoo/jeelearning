<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="jee02.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>javabean测试之使用jsp脚本编写</title>
</head>
<body>
<%
//实例化JavaBean实例，实现类为Person，该实例的实例名为p1
Person p1 = new Person();
//将p1放入page范围内
pageContext.setAttribute("p1",p1);
//设置p1属性
p1.setName("tanamo");
p1.setAge(23);
%>
<!--输出p1的属性值-->
<%=p1.getName()%><br>
<%=p1.getAge()%>
</body>
</html>