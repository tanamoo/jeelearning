<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>小脚本测试</title>
</head>
<body>
<table bgcolor="9999dd" border="1" width="300px">
	<!--Java脚本，这些脚本会对HTML标签产生作用-->
	<%
	for(int i = 0 ; i < 10 ; i++){
	%>
	<tr>
		<td>循环值：</td>
		<td><%=i%></td>
	</tr>
<%}%>
</table>
</body>
</html> 