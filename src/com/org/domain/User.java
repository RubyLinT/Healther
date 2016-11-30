package com.org.domain;

public class User {
     int userid;
     String username;
     String userpwd;
     String usercls;
	public String getUsercls() {
		return usercls;
	}
	public void setUsercls(String usercls) {
		this.usercls = usercls;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
     
}
