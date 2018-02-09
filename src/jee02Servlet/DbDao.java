package jee02Servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class DbDao {
	//该JavaBean做成单例模式
	private static DbDao op;
	private Connection conn;
	private String driver;
	private String url;
	private String username;
	private String pass;
	
	//构造器私有
	private DbDao()
	{
		
	}
	
	//构造器私有
	private DbDao(String driver, String url, String username, String pass)
	throws Exception
	{
		this.driver = driver;
		this.url = url;
		this.username = username;
		this.pass = pass;
		Class.forName(driver);
		conn = DriverManager.getConnection(url,username,pass);
	}

	//下面是各属性成员的setter和getter方法
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	//获取数据库连接
	public void getConnection()throws Exception
	{
		if(conn == null)
		{
			Class.forName(this.driver);
			conn = DriverManager.getConnection(url,username,this.pass);
		}
	}
	
	//实例化JavaBean的入口
	public static DbDao instance()
	{
		if(op == null)
		{
			op =new DbDao();
		}
		return op;
	}
	
	//实例化JavaBean的入口
	public static DbDao instance(String driver, String url, String username, String pass)
	throws Exception
	{
		if(op == null)
		{
			op = new DbDao(driver, url, username, pass);
		}
		return op;
	}
	
	//插入记录
	public boolean insert(String sql) throws Exception
	{
		getConnection();
		java.sql.Statement stmt = this.conn.createStatement();
		if (stmt.executeUpdate(sql)!=1)
		{
			return false;
		}
		return true;
	}
	
	//执行查询
	public ResultSet query(String sql) throws Exception
	{
		getConnection();
		java.sql.Statement stmt = this.conn.createStatement();
		return stmt.executeQuery(sql);
				
	}
	
	//执行删除
	public void delete(String sql) throws Exception
	{
		getConnection();
		java.sql.Statement stmt = this.conn.createStatement();
		stmt.executeQuery(sql);
	}
	
	//执行更新
	public void update(String sql) throws Exception
	{
		getConnection();
		java.sql.Statement stmt = this.conn.createStatement();
		stmt.executeQuery(sql);
	}

}
