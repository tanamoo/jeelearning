//demo学习：http://blog.csdn.net/xiaolangfanhua/article/details/52476211
package jee02;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestMysql {
public static void main(String[] args){
		
		//1. 加载JDBC驱动程序
		//在连接数据库之前，首先要加载想要连接的数据库的驱动到JVM（Java虚拟机），   这通过java.lang.Class类的静态方法
		try{
			
			// 加载MySql的驱动类
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e)
		{
			System.out.println("找不到驱动程序类，加载驱动失败！");
			e.printStackTrace();
		}
		
		//2.提供JDBC连接的url
		java.sql.Connection conn=null;
		java.sql.Statement stmt=null;
		ResultSet rs=null;
		String url="jdbc:mysql://localhost:3306/test";
		String user="root";
		String password="";
		String sql=null;
		
		//3.创建数据库连接
		try{
			conn=DriverManager.getConnection(url,user,password);
		}catch(SQLException e){
			System.out.println("数据库链接错误！");
			e.printStackTrace();
		}
		
		//4.创建一个statement
		try{
			stmt=conn.createStatement();
		}catch(SQLException e){
			System.out.println("创建Statement失败");
			e.printStackTrace();
		}
		
		//5.执行SQL语句
		
		
		
		//6.处理结果
		try{sql="select * from student";
				rs=stmt.executeQuery(sql);
				
				while(rs.next()){
					//System.out.println(rs.getInt("id")+" ");
					//System.out.println(rs.getString("name")+" ");
					//System.out.println(rs.getString("chinesename"));
					System.out.println(rs.getString(2));
				}
		}catch(SQLException e){
			System.out.println("数据库操作错误");
			e.printStackTrace();
		}
		
 	//7.关闭JDBC对象
		try{
			if(rs!=null){
				rs.close();
				rs=null;
			}
			if(stmt!=null){
				stmt.close();
				stmt=null;
			}
			if(conn!=null){
				conn.close();
				conn=null;
			}
		}catch(Exception e){
			System.out.println("数据关闭错误");
			e.printStackTrace();
		}
				
		
	}

}
