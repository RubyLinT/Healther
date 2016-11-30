package com.org.serviceImp;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.org.dao.UserDao;
import com.org.domain.User;
import com.org.service.UserService;

public class UserServiceImp implements UserService {

	@Override
	public int checklogin(User auser) {
		// TODO Auto-generated method stub

		int rowscount=new UserDao().isExiste(auser);
		
		
		return rowscount;
	}

	@Override
	public int add(User auser) {
		int rowscount=new UserDao().insert(auser);;

		return rowscount;
	}

	@Override
	public int Mod(User auser) {
		int rowscount=new UserDao().update(auser);;
		return rowscount;

	}

	@Override
	public int Del(int id) {
		// TODO Auto-generated method stub
		int flag=new UserDao().delUser(id);
		return flag;
	}

	@Override
	public List<Map> userListAll() {
          List<Map> list =new UserDao().QueryAll();//将多个 对象 转换成 多个新闻   对象 集合 
		  return list;
	}

	@Override
	public Map userLook(int id) {
		Map auser=new UserDao().userLook(id);
		return auser;
	}

	@Override
	public Map getUserByName(String username) {
		// TODO Auto-generated method stub
		Map auser=new UserDao().getUserByName(username);
		return auser;
	}

	@Override
	public Map getUserById(int id) {
		// TODO Auto-generated method stub
		Map auser=new UserDao().getUserById(id);
		return auser;
	}

}
