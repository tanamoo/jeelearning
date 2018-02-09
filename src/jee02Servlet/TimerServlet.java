package jee02Servlet;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.swing.Timer;

public class TimerServlet extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//作为后台服务执行，每隔10s输出一次系统时间
		Timer t = new Timer(10000, new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				System.out.println(new Date());
			}
		});
		t.start();
	}

}
