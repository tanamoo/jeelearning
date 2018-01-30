package jee02;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;


public class Hello extends Applet
{
	
	public void paint(Graphics g)
	{
		//先绘出字符串，字符串通过getParameter方法获取
		g.drawString(getParameter("hello"),20,30);
		//设置颜色
		g.setColor(new Color(255,200,200));
		//画出一个矩形
		g.fillRect(50,60,200,150);
	}
}
