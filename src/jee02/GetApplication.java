package jee02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetApplication extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response)
	throws IOException
	{
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>");
		out.println("测试application");
		out.println("</title></head><body>");
		ServletContext sc = getServletConfig().getServletContext();
		out.println(sc.getAttribute("count"));
		out.println("</body></html>");
	}

}
