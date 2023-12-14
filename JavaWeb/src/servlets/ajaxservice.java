package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ajaxservice
 */
@WebServlet("/ajax")

public class ajaxservice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajaxservice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String q = request.getParameter("q");
		String ReturnHtml = "";
		ArrayList<String> arrayList = new ArrayList<String>();
		arrayList.add("Ada");
		arrayList.add("Atom");
		arrayList.add("Bob");
		arrayList.add("Boy");
		arrayList.add("Cat");
		arrayList.add("Clinton");
		arrayList.add("Donkey");
		for (String s:arrayList) {
			if (s.length() > q.length())
				if (s.substring(0, q.length()).equalsIgnoreCase(q))
					ReturnHtml += s + ",";
		}
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		if (ReturnHtml.length() > 0)
			ReturnHtml = ReturnHtml.substring(0, ReturnHtml.length()-1);
		PrintWriter out=response.getWriter();
		out.print(ReturnHtml);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
