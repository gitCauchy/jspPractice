<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookie生命周期</title>
</head>
<body>
	<h1>Cookie生命周期</h1>
	<%
		Cookie cookie = new Cookie("aaa","AAA");
		cookie.setMaxAge(60);// 生命周期1分钟
		//cookie.setMaxAge(-1);// 关闭即删除
		//cookie.setMaxAge(0);// 立即删除
		response.addCookie(cookie);
		
	%>

</body>
</html>