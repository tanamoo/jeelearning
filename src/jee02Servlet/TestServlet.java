//访问Servlet的配置参数
package jee02Servlet;

import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

public class TestServlet extends HttpServlet {
	//重写init方法
	public void init(ServletConfig config)
	throws ServletException
	{
		//重写该方法，应该首先调用父类的init方法
		super.init(config);
	}
	
	//响应客户端请求的方法
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, java.io.IOException
	{
		try 
		{
			//获取ServletConfig对象
			ServletConfig config = getServletConfig();
			//通过ServletConfig对象获取配置参数
			String driver = config.getInitParameter("driver");
			String url = config.getInitParameter("url");
			String user = config.getInitParameter("user");
			String pass = config.getInitParameter("pass");
			
			//注册驱动
			Class.forName(driver);
			//获取数据库驱动
			Connection conn = DriverManager.getConnection(url,user,pass);
			//创建statement对象
			java.sql.Statement stmt = conn.createStatement();
			//执行查询，获取ResultSet对象
			ResultSet rs = stmt.executeQuery("select * from student");
			//获取页面输出流
			PrintStream out = new PrintStream(response.getOutputStream());
			
			//输出html标签
			out.println("<html>");
			out.println("<head>");
			out.println("<title>applicaiton测试</title>");
			out.println("<body>");
			out.println("<table bgcolor=\"9999dd\" border=\"1\"" + "align=\"center\">");
			//遍历结果集
			while(rs.next())
			{
				//输出结果内容
				out.println("<tr>");
				out.println("<td>" + rs.getString(1) + "</td>");
				out.println("<td>" + rs.getString(2) + "</td>");
				out.println("</tr>");
				
			}
			
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
