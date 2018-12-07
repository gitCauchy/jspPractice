<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success</title>
</head>
<body>
<h1>Success</h1>
<%
	String username = (String)session.getAttribute("username");
	if(username == null){
		// 未登录，向request域中保存错误信息，转发到login.jsp
		request.setAttribute("msg", "请重新登录");
		request.getRequestDispatcher("/login/login.jsp").forward(request,response);
		return;
	}
%>
欢迎<%=session.getAttribute("username")%>先生
</body>
</html>