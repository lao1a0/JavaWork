package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SecondServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>在页面中直接嵌入JavaScript</title>");
		out.println("<script type=\"text/javascript\">");
		out.println("    var currentTime = new Date(); ");
		out.println("    var hour = currentTime.getHours(); ");
		out.println("    var minu = currentTime.getMinutes(); ");
		out.println("    alert(\"您好！现在是\" + hour + \":\" + minu + \"\\r欢迎访问《WEB应用开发技术》官方网站！\");");
		out.println("</script>");
		out.println("</head>");
		out.println("<body>");
		out.println("    <p style=\"align:center\">欢迎访问《WEB应用开发技术》官方网站：<a href=\"http://www.leiyu.space\">http://www.leiyu.space</a></p>");
		out.println("</body>");
		out.println("</html>");
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
