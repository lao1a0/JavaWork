package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 第一个Servlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * 构造方法
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    /**
     * 初始化Servlet方法
     */
    public void init() throws ServletException {
    	super.init();
    	System.out.println("FirstServlet初始化！");
    }

	/**
	 * 处理http get请求
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("  <head>");
		out.println("    <title>第一个Servlet</title>");
		out.println("  </head>");
		out.println("  <body>");
		out.println("    我的第一个Servlet<br/>");
		out.println("    " + this.getClass());
		out.println("  </body>");
		out.println("</html>");
		out.flush();
		out.close();
	}

	/**
	 * 处理http post请求
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	/**
	 * destroy方法
	 */
	public void destroy() {
		super.destroy();
		System.out.println("FirstServlet被销毁");
	}
}
