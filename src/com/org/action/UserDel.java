package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.org.serviceImp.UserServiceImp;
import com.org.util.MysqlHelper;

/**
 * Servlet implementation class NewsDel
 */
public class UserDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  int aid=Integer.parseInt(request.getParameter("id"));
		  response.setHeader("content-type","text/html;charset=UTF-8");  
		  int rowscount = new UserServiceImp().Del(aid);
		  
		  PrintWriter out=response.getWriter();	
		  
		  if(rowscount>0){
			  out.print("<script>alert('¹§Ï²£¡³É¹¦£¡');location.href='UserIndex';</script>");
		  }else{
			  out.print("<script>alert('±§Ç¸£¡Ê§°Ü£¡');location.href='UserIndex';</script>");
		  }

	}

}
