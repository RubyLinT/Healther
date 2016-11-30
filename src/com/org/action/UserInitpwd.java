package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.org.domain.User;
import com.org.serviceImp.UserServiceImp;

/**
 * Servlet implementation class NewsMod
 */
public class UserInitpwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInitpwd() {
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
		
        User auser=new User();
        auser.setUserid(aid);
        auser.setUserpwd("123456");
		int rowscount=new UserServiceImp().Mod(auser);
		PrintWriter out=response.getWriter();
		if(rowscount>0){
			out.print("<script>alert('¹§Ï²£¡³É¹¦£¡ÃÜÂë±»³õÊ¼»¯Îª£º123456 £¡');location.href='UserIndex';</script>");
			
		}else{		
				
			out.print("<script>alert('±§Ç¸£¡Ê§°Ü£¡');location.href='UserIndex';</script>");
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
