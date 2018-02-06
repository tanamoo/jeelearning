<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request处理</title>
</head>
<body>
<%
//取出请求参数
String bal = request.getParameter("balance");
double qian = Double.parseDouble(bal);

//取出request范围内的info属性
List<String> info = (List<String>)request.getAttribute("info");
for(String tmp:info)
{
	out.println(tmp + "<br>");
}
out.println("取钱" + qian + "块");
out.println("账户减少" + qian);
%>
</body>
</html>