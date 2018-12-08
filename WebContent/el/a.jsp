<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.cauchy.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Address address = new Address();
	address.setCity("Beijng");
	address.setStreet("XueYuanLu");
	Employee emp = new Employee();
	emp.setName("Cauchy");
	emp.setSalary(12344.5);
	emp.setAddress(address);
	request.setAttribute("emp", emp);
%>
${requestScope.emp.address.street}
</body>
</html>