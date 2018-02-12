<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="/mytaglib" prefix="mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>带标签体的标签：迭代器标签</title>
</head>
<body>
<h2>带标签体的标签：迭代器标签</h2>
<hr>
<%
//创建一个List对象
List<String> a = new ArrayList<String>();
a.add("hello");
a.add("world");
a.add("tanamo");

//将List对象放入page范围内
pageContext.setAttribute("a",a);
%>

<table border="1" bgcolor="aaaadd" width="300">
<!-- 使用迭代器标签，对a集合进行迭代 -->
<mytag:iterator item="item" collection="a">
<tr>
<td>${pageScope.item }</td>
</tr>
</mytag:iterator>
</table>

</body>
</html>