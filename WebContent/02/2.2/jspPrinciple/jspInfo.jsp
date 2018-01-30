<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!--指定info信息-->
<%@ page info="this is a jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>测试page指令的info属性</title>
</head>
<body>
<!--输出info信息-->
<%=getServletInfo()%>
</body>
</html>