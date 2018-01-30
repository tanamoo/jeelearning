<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>javabean测试</title>
</head>
<body>
<!--创建Person的实例，该实例的实例名为p1-->
<jsp:useBean id="p1" class="jee02.Person" scope="page"/>
<!--设置p1的name属性-->
<jsp:setProperty name="p1" property="name" value="tanamo"/>
<!--设置p1的age属性-->
<jsp:setProperty name="p1" property="age" value="23"/>
<!--输出p1的name属性-->
<jsp:getProperty name="p1" property="name"/>
<!--输出p1的age属性-->
<jsp:getProperty name="p1" property="age"/>
</body>
</html>