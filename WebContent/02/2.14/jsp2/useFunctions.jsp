<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 导入标签库 -->
<%@ taglib prefix="myfunc" uri="/mytaglib" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表达式语言 - 自定义函数</title>
</head>
<body>
<h2>表达式语言 - 自定义函数</h2>
<hr>
请输入一个字符串：
<form action="useFunctions.jsp" method="post">
字符串=<input type="text" name="name" value="${param['name'] }">
<input type="submit" value="提交">
</form>

<table border="1" bgcolor="aaaadd">
<tr>
<td><b>表达式语言</b></td>
<td><b>计算结果</b></td>
</tr>
<tr>
<td>\${param["name"] }</td>
<td>${param["name"] }&nbsp;</td>
</tr>
<!-- 使用reverse函数 -->
<tr>
<td>\${myfunc:reverse(param["name"]) }</td>
<td>${myfunc:reverse(param["name"]) }&nbsp;</td>
</tr>
<tr>
<td>\${myfunc:reverse(myfunc:reverse(param["name"])) }</td>
<td>${myfunc:reverse(myfunc:reverse(param["name"])) }&nbsp;</td>
</tr>
<!-- 使用countChar函数 -->
<tr>
<td>\${myfunc:countChar(param["name"]) }</td>
<td>${myfunc:countChar(param["name"]) }</td>
</tr>


</table>

</body>
</html>