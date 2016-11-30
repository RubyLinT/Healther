package com.org.service;

import java.util.List;
import java.util.Map;

import com.org.domain.User;

public interface UserService {
    int checklogin(User auser);
    Map getUserByName(String username);
    Map getUserById(int id);
	int add(User auser);
	int Mod(User auser);
	int Del(int id);
	List<Map> userListAll();
	Map userLook(int id);
}
