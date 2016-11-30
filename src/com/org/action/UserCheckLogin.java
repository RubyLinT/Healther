package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.domain.User;
import com.org.serviceImp.UserServiceImp;

/**
 * Servlet implementation class UserCheckLogin
 */
public class UserCheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserCheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  response.setHeader("content-type","text/html;charset=UTF-8");
		String uname=request.getParameter("username");
		String upwd=request.getParameter("password");

		HttpSession session = request.getSession();
		
		session.setMaxInactiveInterval(60*60*1);
		
		User auser=new User();
		
		auser.setUsername(uname);
		auser.setUserpwd(upwd);
		
		int flag=new UserServiceImp().checklogin(auser);
		
		 PrintWriter out=response.getWriter();	
		  if(flag>0){
			  
			  Map oneuser=new UserServiceImp().getUserByName(uname);
			  session.setAttribute("cuser",uname);
			  session.setAttribute("ucls",oneuser.get("usercls"));
			  session.setAttribute("uid",oneuser.get("Id"));
			  out.print("<script>location.href='admin/news.html';</script>");
		  }else{
			  out.print("<script>alert('±§Ç¸£¡Ê§°Ü£¡');location.href='admin/Login.jsp';</script>");
		  }
		
	}

}
