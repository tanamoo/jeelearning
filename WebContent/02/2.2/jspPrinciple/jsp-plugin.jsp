<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>使用Applet</title>
</head>
<body>
<jsp:plugin type="applet" code="Hello.class" codebase="c://Users//y.a.tan//workspace//jeelearning//WebContent//applet//Hello.class">
<jsp:params>
<jsp:param name="hello" value="Java world"/>
</jsp:params>
<jsp:fallback>
<p>不能下载jre插件</p>
</jsp:fallback>
</jsp:plugin>
</body>
</html>