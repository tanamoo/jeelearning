/*
 * 该Filter对用户请求进行过滤，Filter将通过doFilter方法来设置request编码的字符集，从而避免每个JSP、Servlet都需要设置
 * 还会验证用户是否登录，如果用户用户没有登录，系统直接跳转到登录页面
 */



package jee02Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AuthorityFilter implements Filter {
	
	//FilterConfig可用于访问Filter的配置信息
	private FilterConfig config;
	
	//实现初始化方法
	public void init(FilterConfig config)
	{
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
		
		//获取该Filter的配置参数
		String encoding = config.getInitParameter("encoding");
		String loginPage = config.getInitParameter("loginPage");
		String proPage = config.getInitParameter("proLogin");
		
		//设置request编码用的字符集
		request.setCharacterEncoding(encoding);
		
		HttpServletRequest hrequest = (HttpServletRequest)request;
		HttpSession session = hrequest.getSession(true);
		
		//获取客户请求的页面
		String requestPath = hrequest.getServletPath();
		
		//如果session范围的user为null，即表明没有登录
		//且用户请求的既不是登录页面，也不是处理登录的页面
		if(session.getAttribute("user") == null
				&& !requestPath.endsWith(loginPage)
				&& !requestPath.endsWith(proPage))
        {
	            //forward到登录页面
			    request.setAttribute("tip", "您还没有登录");
			    request.getRequestDispatcher(loginPage).forward(request, response);
        }
		
		//"放行"请求
		else {
			chain.doFilter(request, response);
		}
	}
	
	

}
