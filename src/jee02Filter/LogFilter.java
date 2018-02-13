
/*
 * 日志Filter，这个Filter负责拦截所有的用户请求，并将请求的信息记录在日志中。
 * 为该Filter所在的Web应用随便提供一个JSP页面，并通过浏览器来访问该JSP页面，即可在Tomcat的控制台看到输出信息
 */


package jee02Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogFilter implements Filter{
	
	//FilterConfig可用于访问Filter的配置信息
	private FilterConfig config;
	
	//实现初始化方法
	public void init(FilterConfig config) {
		this.config = config;
		
	}
	
	//实现销毁方法
	public void destroy()
	{
		this.config = null;
	}
	
	
	//执行过滤的核心方法
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		//--------------------------下面代码用于向用户请求执行预处理---------------------------------------
		
		//获取ServletContext对象，用于记录日志
		ServletContext context = this.config.getServletContext();
		long before = System.currentTimeMillis();
		System.out.println("开始过滤....");
		//将请求转换成HttpServletRequest请求
		HttpServletRequest hrequest = (HttpServletRequest)request;
		//记录日志
		context.log("Filter已经截获到用户的请求地址：" + hrequest.getServletPath());
		
		//Filter只是链式处理，请求依然放行到目的地址
		chain.doFilter(request, response);
		
		//--------------------------下面代码用于对服务器响应执行后处理-------------------------------------
		
		long after = System.currentTimeMillis();
		//记录日志
		context.log("过滤结束");
		//再次记录日志
		context.log("请求被定为到 " + hrequest.getRequestURI() + "所花的时间为：" + (after-before)) ;
		
	}

	
		
	

}
