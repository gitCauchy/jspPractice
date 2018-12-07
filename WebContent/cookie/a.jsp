<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保存Cookie</title>
</head>
<body>
	<h1>保存Cookie</h1>
	<%
		Cookie cookie1 = new Cookie("aaa","AAA");
		Cookie cookie2 = new Cookie("bbb","BBB");
		response.addCookie(cookie1);
		response.addCookie(cookie2);
	%>

</body>
</html>