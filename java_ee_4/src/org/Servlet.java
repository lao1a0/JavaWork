package org;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Student_table;
import org.Controller;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("*.rxy")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String action_url = request.getServletPath();
		
		if(action_url.equals("/find.rxy"))
		{
			request.setCharacterEncoding("UTF-8");
			ArrayList<Student_table> list=Controller.getList();  
			request.setAttribute("list", list);		
			request.getRequestDispatcher("find_stu_all.jsp").forward(request, response); 
		}
		else if(action_url.equals("/search.rxy"))
		{
		    request.getRequestDispatcher("find_stu_tijiao.jsp").forward(request, response);
		}
		else if(action_url.equals("/show.rxy"))
		{
			request.setCharacterEncoding("UTF-8");
			String sid = request.getParameter("sid");
			Student_table res = Controller.searchById(Integer.parseInt(sid));
			request.setAttribute("bi", res);
		    request.getRequestDispatcher("show.jsp").forward(request, response);
		}
		else if(action_url.equals("/add.rxy"))
		{
			 request.getRequestDispatcher("insert_stu_tijiao.jsp").forward(request, response);
		}
		else if(action_url.equals("/add_.rxy"))
		{
			Student_table bi=new Student_table();
			bi.setName(request.getParameter("name"));
			bi.setSex(request.getParameter("sex"));
			bi.setAge(Integer.parseInt(request.getParameter("age")));
			bi.setWeight(Float.parseFloat(request.getParameter("weight")));
			bi.setHight(Float.parseFloat(request.getParameter("hight")));
			bi.setBlood(request.getParameter("blood"));
			Controller.add(bi);		
			response.sendRedirect("index.jsp");
		}
		else if(action_url.equals("/delete.rxy"))
		{
			String sid = request.getParameter("sid");
			if(sid == null)
			{
				request.getRequestDispatcher("delete_stu_tijiao.jsp").forward(request, response); 
			}
			else
			{
				int res = Controller.delete(Integer.parseInt(sid));
				if(res==1)
				{
					request.getRequestDispatcher("success.jsp").forward(request, response);
				}
				else
				{
					request.getRequestDispatcher("error.jsp").forward(request, response);
				}
			}		
		}
		else if(action_url.equals("/modify.rxy"))
		{
			request.getRequestDispatcher("/update_stu_tijiao.jsp").forward(request, response);
		}
		else if(action_url.equals("/modify_.rxy"))
		{
			request.setCharacterEncoding("UTF-8");
			String sid = request.getParameter("sid");
			Student_table res = Controller.searchById(Integer.parseInt(sid));
			request.setAttribute("bi", res);
			request.getRequestDispatcher("/update_stu_edit.jsp").forward(request, response);
		}
		else if(action_url.equals("/modify__.rxy"))
		{
			Student_table bi=new Student_table();
			bi.setId(Integer.parseInt(request.getParameter("id")));
			bi.setName(request.getParameter("name"));
			bi.setSex(request.getParameter("sex"));
			bi.setAge(Integer.parseInt(request.getParameter("age")));
			bi.setWeight(Float.parseFloat(request.getParameter("weight")));
			bi.setHight(Float.parseFloat(request.getParameter("hight")));
			bi.setBlood(request.getParameter("blood"));
			Controller.modify(bi);		
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
