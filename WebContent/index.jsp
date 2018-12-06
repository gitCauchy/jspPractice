<!-- 它是一种jsp指令，也是一种特殊的标签 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- java代码片段 -->
<%
	String path = request.getContextPath(); // 获取项目名
	/**
	http://localhost:8080/jspServlet/
	*/
	
	String basePath = request.getScheme() + "://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 向页面输出basePath -->
<base href = "<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
This is a Jsp page<br>
<!-- 这里相当于
<a href=<%=basePath%>hello.html>hello</a>
 相当于在每个href之前-->
<a href=hello.html>hello</a><br>
<%
	int a = 10; // 局部变量
%>
<%
	out.print(a);
%>
<%!
	int x = 10;// 声明成员变量和方法
	public static void function(int x){
		System.out.println();
	}
%>
</body>
</html>