<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取请求参数</title>
</head>
<body>
<%
//设置request编码的字符集方式
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String[] color = request.getParameterValues("color");
String national = request.getParameter("country");
%>

<!-- 下面依次输出表单域的值 -->
您的名字：<%=name %><hr>
您的性别：<%=gender %><hr>
您喜欢的颜色：<% for(String c:color){ out.println(c+" ");} %><hr>
您来自的国家：<%=national %><hr>

</body>
</html>