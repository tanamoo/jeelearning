<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out测试</title>
</head>
<body>
	<%
		//注册数据库驱动
		Class.forName("com.mysql.jdbc.Driver");
		//获取数据库连接
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "roor", "");
		//创建statement对象
		Statement stmt = conn.createStatement();
		//执行查询，获取ResultSet对象
		ResultSet rs = stmt.executeQuery("select * from student");
	%>
	<table bgcolor="9999dd" border="1" align="center">
		<%
			while (rs.next()) {
				//输出表格行
				out.println("<tr>");
				//输出表格列
				out.println("<td>");
				//输出结果集的第二列的值
				out.println(rs.getString(1));
				//关闭表格列
				out.println("</td>");
				//输出表格列
				out.println("<td>");
				//输出结果集的第三列的值
				out.println(rs.getString(2));
				//关闭表格列
				out.println("</td>");
				//关闭表格行
				out.println("</tr>");
			}
		%>

	</table>
</body>
</html>