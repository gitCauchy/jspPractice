package com.cauchy.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) {
		
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException,IOException{
		// 获取表单数据：
		// 处理中文问题：
		request.setCharacterEncoding("utf-8");
		// 获取表单信息
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		// 校验用户名和密码是否正确
		if(password.equals("000000")) {
			// 登录成功
			// 将用户名保存在cookie中：
			// 当再次打开页面时，login.jsp会读取其中的request中的cookie，把其显示到用户名文本框中
			Cookie cookie = new Cookie("username",username);// 创建cookie
			cookie.setMaxAge(60*30); // 设置寿命为30分钟
			response.addCookie(cookie);
			// 保存用户信息到session中
			HttpSession session = request.getSession();
			// 向session中保存用户名
			session.setAttribute("username", username);
			// 重定向到success1.jsp
			response.sendRedirect("/jspPractice/login/success1.jsp");
		}else {
			// 登录失败
			// 保存错误信息
			request.setAttribute("msg", "密码错误");
			// 转发到login.jsp
			RequestDispatcher qr = request.getRequestDispatcher("/login/login.jsp");
			qr.forward(request, response);
		}
	}
}
