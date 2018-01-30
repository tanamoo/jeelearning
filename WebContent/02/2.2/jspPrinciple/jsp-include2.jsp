<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
	<title>jsp-include测试</title>
</head>
<body>
<jsp:include page="forwardResult.jsp">
<jsp:param name="age" value="23"/>
</jsp:include>
</body>
</html>