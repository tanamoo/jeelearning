<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试config内置对象</title>
</head>
<body>
<!-- 输出该JSP名为name的配置参数 -->
name配置参数的值：<%=config.getInitParameter("name") %><br/>
<!-- 输出该JSP名为age的配置参数 -->
age配置参数的值:<%=config.getInitParameter("age") %>
</body>
</html>