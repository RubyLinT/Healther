package com.org.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.org.domain.User;
import com.org.serviceImp.UserServiceImp;
import com.org.util.MysqlHelper;

/**
 * Servlet implementation class NewsIndex
 */
public class UserIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  response.setHeader("content-type","text/html;charset=UTF-8");
		  
	
		  
		  String content="";
		  content+="<html><body  background='admin/33.jpg'><br/><a href='user/Add.jsp'><font size=+3>用户添加</font></a><br>";	  
		  
		  List<Map> userlist = new UserServiceImp().userListAll();
		  
		  content+="<table  border='2' width='300' >";
		  content+="<tr align='center'><td>用户</td><td colspan='2'>操作</td></tr>";
		  for(int i=0;i<userlist.size();i++){
			  content+="<tr align='center'><td><a href='UserLook?id="+userlist.get(i).get("Id")+"'>"+userlist.get(i).get("username")+"</a></td><td><a href='UserInitpwd?id="+userlist.get(i).get("Id")+"'>初始化密码</a></td><td><a href='UserDel?id="+userlist.get(i).get("Id")+"'>删除</a></td></tr>";
		  }
		  content+="</table>";
		  
		  content+="</body></html>";
        PrintWriter out=response.getWriter();	
		  out.print(content);
	}

}
