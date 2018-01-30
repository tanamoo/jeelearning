<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>测试page指令的errorPage属性</title>
</head>
<body>
<%
//下面代码将出现运行时异常
int a = 6;
int b = 0;
int c = a/b;
%>
</body>
</html>