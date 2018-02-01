<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//从配置参数中获取驱动
String driver = application.getInitParameter("driver");
//从配置参数中获取数据库url
String url = application.getInitParameter("url");
//从配置参数中获取用户名
String user = application.getInitParameter("user");
//从配置参数中获取密码
String pass = application.getInitParameter("pass");
//注册驱动
Class.forName("com.mysql.jdbc.Driver");
//获取数据库连接
Connection conn = DriverManager.getConnection(url,user,pass);
//创建statement对象
Statement stmt = conn.createStatement();
//执行查询
ResultSet rs = stmt.executeQuery("select * from student");
%>
<table bgcolor="9999dd" border="1" align="center">

<%
//遍历结果集
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
</tr>
<%
}
%>
</table>
</body>
</html>