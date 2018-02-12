package jee02Tag;

import java.io.IOException;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class QueryTag extends SimpleTagSupport {
	
	//标签的属性
	private String driver;
	private String url;
	private String user;
	private String pass;
	private String sql;
	
	//执行数据库访问对象
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private ResultSetMetaData rsmd = null;
	public String getDriver() {
		return driver;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSql() {
		return sql;
	}
	public void setSql(String sql) {
		this.sql = sql;
	}
	
	public void doTag() throws JspException, IOException
	{
		try
		{
			//注册驱动
			Class.forName(driver);
			//获取数据库连接
			conn = DriverManager.getConnection(url, user, pass);
			//创建statement对象
			stmt = conn.createStatement();
			//执行查询
			rs = stmt.executeQuery(sql);
			rsmd = rs.getMetaData();
			//获取列数目
			int columnCount = rsmd.getColumnCount();
			//获取页面输出流
			Writer out = getJspContext().getOut();
			//在页面输出表格
			out.write("<table border='1' bgcolor='9999cc' width='400'>");
			//遍历结果集
			while(rs.next())
			{
				out.write("<tr>");
				//逐行输出查询到的数据
				for(int i = 1; i <= columnCount; i++)
				{
					out.write("<td>");
					out.write(rs.getString(i));
					out.write("</td>");
				}
				out.write("</tr>");
			}
			
		}
		catch(ClassNotFoundException cnfe)
		{
			cnfe.printStackTrace();
			throw new JspException("自定义标签错误" + cnfe.getMessage());
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
			throw new JspException("自定义标签错误" + ex.getMessage());
		}
		finally
		{
			//关闭结果集
			try
			{
				if(rs!=null)
					rs.close();
				if(stmt!=null)
					stmt.close();
				if(conn!=null)
					conn.close();
			}
			catch(SQLException sqle)
			{
				sqle.printStackTrace();
			}
		}
	}

}
