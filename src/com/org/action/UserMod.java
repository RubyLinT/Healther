package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.domain.User;
import com.org.serviceImp.UserServiceImp;

/**
 * Servlet implementation class NewsMod
 */
public class UserMod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserMod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int aid=Integer.parseInt(request.getParameter("user_id"));
		
		String usernewname=request.getParameter("user_name");
		String usernewpwd=request.getParameter("user_pwd");
		
		response.setHeader("content-type","text/html;charset=UTF-8");
		
        User auser=new User();
        auser.setUserid(aid);
        auser.setUsername(usernewname);
        auser.setUserpwd(usernewpwd);
        
		int rowscount=new UserServiceImp().Mod(auser);
		
		PrintWriter out=response.getWriter();
		if(rowscount>0){
			
				out.print("<script>alert('修改成功！重新登录！');location.href='admin/Login.jsp';</script>");
			
		}else{		
				
			out.print("<script>alert('抱歉！修改失败！');location.href='user/Mod.jsp';</script>");
		}
		//int Mod(News anews);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 doGet(request, response);
		
	}

}
