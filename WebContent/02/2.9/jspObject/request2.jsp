<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取get请求参数</title>
</head>
<body>
<%
String name = request.getParameter("name");
String gender = request.getParameter("gender");
%>
<!-- 输出name和gender变量值 -->
您的名字：<%=name %><hr>
您的性别：<%=gender %><hr>
</body>
</html>