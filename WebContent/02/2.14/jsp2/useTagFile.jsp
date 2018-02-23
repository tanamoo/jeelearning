<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="tagfile" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>迭代器 tag file</title>
</head>
<body>
<h2>迭代器tag file</h2>
<%
//创建集合对象，用于测试Tag File所定义的标签
List<String> a = new ArrayList<String>();
a.add("hello");
a.add("lilei");
a.add("tanamo");
//将集合对象放入页面范围
request.setAttribute("a", a);
%>
//使用自定义标签
<!-- tagfile前缀和tag文件名之间不能有空格！！ -->
<tagfile:iterator bgColor="#99dd99" cellColor="#9999cc" title="迭代器标签" bean="a"/>
</body>
</html>