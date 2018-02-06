<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>获取包含非西欧字符的GET请求参数</title>
</head>
<body>
<%
//获取请求里包含的查询字符串
String rawQueryStr  = request.getQueryString();
out.println("原始查询字符串为：" + rawQueryStr + "<hr>");

//使用URLDecoder解码字符串
String queryStr = java.net.URLDecoder.decode(rawQueryStr, "utf-8");
out.println("解码后的查询字符串为：" + queryStr + "<hr>");

//以&符号分解字符串
String[] paramPairs = queryStr.split("&");
for (String paramPair : paramPairs)
{
	out.println("每个请求参数名、值对为：" + paramPair + "<br>");
	//以=分解请求参数名和值
    String[] nameValue = paramPair.split("=");
	out.println(nameValue[0] + "参数的值是:" + nameValue[1] + "<hr>");
}
%>
</body>
</html>