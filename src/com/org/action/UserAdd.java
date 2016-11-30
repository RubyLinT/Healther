package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.org.domain.User;
import com.org.serviceImp.UserServiceImp;
import com.org.util.MysqlHelper;
import com.sun.jmx.snmp.Timestamp;

/**
 * Servlet implementation class NewsAdd
 */
public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("content-type","text/html;charset=UTF-8");
		String username=request.getParameter("user_name");
		String userpwd=request.getParameter("user_pwd");		
		
        User auser=new User();
        auser.setUsername(username);
        auser.setUserpwd(userpwd);
        auser.setUsercls("user");
        
        int flag = new UserServiceImp().checklogin(auser);
        PrintWriter out=response.getWriter();

		if(flag > 0 ) {
			out.print("<script>alert('抱歉！此用户名已存在！');location.href='user/Add.jsp';</script>");
		} else {
			
			int rowscount=new UserServiceImp().add(auser);
			out.print("<script>alert('注册成功！');location.href='user/Add.jsp';</script>");
			if(rowscount>0){
				 response.sendRedirect("admin/Login.jsp");
				
			}else{			
				out.print("<script>alert('抱歉！失败！');location.href='user/Add.jsp';</script>");
			}
		}
	
	}
}
