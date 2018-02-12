<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 导入标签库，指定mytag前缀的标签，由/mytaglib标签库处理 -->
<%@ taglib uri="/mytaglib" prefix="mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定义标签示范</title>
</head>
<body bgcolor="#ffffc0">
<h2>下面显示的是自定义标签中的内容</h2>
<!-- 使用标签，其实mytag是标签前缀，根据mytag的编译指令，mytag前缀的标签将由/mytaglib标签库来处理 -->
<mytag:helloWorld /><br>

</body>
</html>