<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>声明测试</title>
</head>
<!--以下是JSP声明部分-->
<%!
//声明一个整型变量
public int count;

//声明一个方法
public String info(){
	return "hello";
}
%>
<body>
<%
//将count的值输出后再加1
 out.println(count++);%>
<br>
<%
//输出info()方法的返回值
out.println(info());%>
</body>
</html>