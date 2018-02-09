package jee02Servlet;

import javax.servlet.http.HttpServlet;

import java.io.PrintStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	// 客户端的响应方法，使用该方法可以响应客户端所有类型的请求
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		// 设置编码方式
		request.setCharacterEncoding("utf-8");
		// 获取name的请求参数
		String name = request.getParameter("name");
		// 获取gender的请求参数
		String gender = request.getParameter("gender");
		// 获取color的请求参数
		String[] color = request.getParameterValues("color");
		// 获取country的请求参数
		String national = request.getParameter("country");
		// 获取页面输出流
		PrintStream out = new PrintStream(response.getOutputStream());
		// 输出html标签
		out.println("<!DOCTYPE HTML PUBLIC \"" + "-//W3C//DTD HTML 4.0 Transitional//EN\">");
		out.println("<HTML>");
		out.println("<head>");
		out.println("<title>Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		// 输出请求参数的值
		out.println("您的名字：" + name + "<hr>");
		out.println("您的性别：" + gender + "<hr>");
		out.println("您喜欢的颜色：");
		for (String c : color) {
			out.println(c + " ");
		}
		out.println("<hr>");
		out.println("您来自的国家：" + national + "<hr>");
		out.println("</body>");
		out.println("</html>");
	}

}
