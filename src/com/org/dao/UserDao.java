package com.org.dao;

import java.util.List;
import java.util.Map;

import com.org.domain.User;
import com.org.util.MysqlHelper;

public class UserDao {
	  public int isExiste(User auser){
		  String sql="select * from user_tbl where username='"+auser.getUsername()+"' and userpwd='"+auser.getUserpwd()+"'";
		  
		  if(MysqlHelper.isExiste(sql)>0){
			  return 1;
		  }else{
			  return 0;
		  }
	  }
	
	
	  public List<User> listAll(){
    	  
    	  return null;
    	  
      }


	public int insert(User auser) {
		// TODO Auto-generated method stub
		String sql="insert into user_tbl(username,userpwd,usercls)values('"+auser.getUsername()+"','"+auser.getUserpwd()+"','"+auser.getUsercls()+"')";	

		int rowscount=MysqlHelper.doUpdate(sql);
		return rowscount;

	}


	public List<Map> QueryAll() {
		 String sql="select * from user_tbl where usercls<>'admin' order by Id desc";
		 List<Map> list=MysqlHelper.doQuery(sql);
		 return list;
	}


	public Map getUserByName(String username) {
		String sql="select * from user_tbl where username='"+username+"'";
		Map auser=MysqlHelper.getOne(sql);
		return auser;
	}

	public Map getUserById(int id) {
		String sql="select * from user_tbl where Id="+id;
		Map auser=MysqlHelper.getOne(sql);
		return auser;
	}
	
	public int delUser(int id) {
		String sql="delete from user_tbl where Id="+id;
		int flag=MysqlHelper.doUpdate(sql);
		return flag;
	}


	public int update(User auser) {
		String sql="update user_tbl set userpwd='"+auser.getUserpwd()+"' ,username='"+auser.getUsername()+"'where Id="+auser.getUserid();	
		int rowscount=MysqlHelper.doUpdate(sql);
		return rowscount;
	}


	public Map userLook(int id) {
		String sql="select * from user_tbl where Id="+id;
		Map auser=MysqlHelper.getOne(sql);
		return auser;
	}
      
      
}
