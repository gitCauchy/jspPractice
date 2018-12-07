<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/jspPractice/AServlet;JSESSIONID=<%=session.getId() %>">点击这里</a>
<%
	// 查看cookie是否存在，如果不存在，在指定的URL之后添加sessionid
	// 如果cookie存在，就不添加任何东西
	out.println(response.encodeURL("/jspPractice/AServlet"));
%>
</body>
</html>