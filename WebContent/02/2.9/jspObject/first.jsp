<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request处理</title>
</head>
<body>
<%
//获取请求的钱数
String bal = request.getParameter("balance");

//将钱数字符串转化成双精度浮点数
double qian = Double.parseDouble(bal);

//对取出的钱进行判断
if(qian < 500){
	out.println("给你" + qian + "块");
	out.println("账号减少" + qian);
}
else
{
	//创建了一个list对象
	List<String> info = new ArrayList<String>();
	info.add("1111111");
	info.add("2222222");
	info.add("3333333");
	//将info对象放入request范围
	request.setAttribute("info",info);
	%>
<!-- 实现转发 -->
<jsp:forward page = "second.jsp"/>
<% 
}
%>

</body>
</html>