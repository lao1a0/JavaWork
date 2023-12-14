package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EncodingServlet")
public class EncodingServlet extends HttpServlet {
	private static final long serialVersionUID = -286431665770754787L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		if(name != null && !name.isEmpty()){
			System.out.println("name=" + name);
			out.print("你好！ " + name);
			out.print("<br/>欢迎来到我的主页。");
		}else{
			out.print("请输入你的中文名字！");
		}
		out.print("<br/><a href=\"6/6-3.jsp\">返回</a>");
		out.flush();
		out.close();
	}
}
