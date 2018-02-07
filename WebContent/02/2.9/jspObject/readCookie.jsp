<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>读取Cookie</title>
</head>
<body>
<%
//读取本站在客户端上保留的所有Cookie
Cookie[] cookies = request.getCookies();
//遍历客户端上的每个Cookie
for (Cookie c: cookies)
{
	//如果Cookie的名为username，表明该Cookie是我们需要访问的Cookie
	if(c.getName().equals("username"));
	{
		out.println(c.getValue());
	}
}
%>
</body>
</html>