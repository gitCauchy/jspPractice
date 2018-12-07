<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<body>
<%--本页面提供登录表单，显示错误信息 --%>
<h1>登录</h1>
<%
	// 读取username cookie,如果不为空显示cookie的值
	String username = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie cookie : cookies){  // 查找username Cookie
			if("username".equals(cookie.getName())){
				username = cookie.getValue();
			}
		}
	}
%>
<form action = "/jspPractice/LoginServlet" method = "post">
	用户名：<input type = "text" name = "username" value = <%=username%>/><br>
	密    码：<input type = "password" name = "password"/><br>
	<input type = "submit" value = "登录">
	<%
		String message = "";
		String msg = (String)request.getAttribute("msg");
		if(msg != null){
			message = msg;
		}
	%>
	<font color = "red"><b><%=message%></b></font>
</form>
</body>
</html>