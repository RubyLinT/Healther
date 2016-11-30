package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.org.serviceImp.UserServiceImp;

/**
 * Servlet implementation class UserLook
 */
public class UserLook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("content-type","text/html;charset=UTF-8");
		 int aid=Integer.parseInt(request.getParameter("id"));
         String content="";  
		  content+="<html><body background='admin/33.jpg'>";	  
		  
		  Map auser=new UserServiceImp().userLook(aid);
		
		  
		  content+="<p>用户："+auser.get("username")+"<br/>等级："+auser.get("usercls")+"</p>";
		  content+="</body></html>";
		  
       PrintWriter out=response.getWriter();	
		  out.print(content);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
