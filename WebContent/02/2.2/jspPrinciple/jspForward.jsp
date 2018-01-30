<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>forward的原始页</title>
</head>
<body>
	<h3>forward的原始页</h3>
	<jsp:forward page="forwardResult.jsp">
	<jsp:param name="age" value="23"/>
</jsp:forward>
</body>
</html>