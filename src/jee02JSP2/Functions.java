package jee02JSP2;

public class Functions {
	
	//对字符串进行反转
	public static String reverse(String text) {
		return new StringBuffer(text).reverse().toString();
	}
	
	//统计字符串的个数
	public static int countChar(String text) {
		return text.length();
	}

}
