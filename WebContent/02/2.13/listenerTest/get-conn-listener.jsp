<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通过Listener获取数据库连接</title>
</head>
<body>
<%
Connection conn = (Connection)application.getAttribute("conn");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("select * from student");
while(rs.next())
{
	out.println(rs.getString(2));
}
%>
</body>
</html>