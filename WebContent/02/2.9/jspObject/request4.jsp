<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//获取原始的请求参数值
String rawName = request.getParameter("name");
//将请求参数值使用ISO-8859-1字符串分解成字节数组
byte[] rawBytes = rawName.getBytes("ISO-8859-1");
//将字节数组重新解码成字符串
String name = new String (rawBytes,"gb2312");
//处理完的参数
out.println(name);
//原始参数值
out.println(rawName);
%>
</body>
</html>