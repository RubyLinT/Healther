package com.org.dao;

import java.util.Map;

import com.org.domain.Constitution;
import com.org.util.MysqlHelper;

public class ConstitutionDao {
	public int insert(Constitution cons) {
		String sql="insert into constitution(username,jan,feb,mar,apr,may,june,july,apr,sept,oct,nov,dece) values('"+cons.getUsername()+"','"+cons.getJan()+"','"+cons.getFeb()+"','"+cons.getMar()+"','"+cons.getApr()+"','"+cons.getMay()+"','"+cons.getJune()+"','"+cons.getJuly()+"','"+cons.getAug()+"','"+cons.getSept()+"','"+cons.getOct()+"','"+cons.getNov()+"','"+cons.getDece()+"')";
		int rowscount=MysqlHelper.doUpdate(sql);
		return rowscount;
	}
	public Map getConsById(int id) {
		String sql="select * from constitution where Id="+id;
		Map cons=MysqlHelper.getOne(sql);
		return cons;
	}
	public Map getConsMsgById(int id) {
		String sql="select jan,feb,mar,apr,may,june,july,aug,sept,oct,nov,dece from constitution where Id="+id;
		Map cons=MysqlHelper.getOne(sql);
		return cons;
	}
	public int delCons(int id) {
		String sql="delete form constitution where Id="+id;
		int flag=MysqlHelper.doUpdate(sql);
		return flag;
	}
	public int Update(Constitution cons) {
		String sql="update constitution set jan='"+cons.getJan()+"',feb='"+cons.getFeb()+"',mar='"+cons.getMar()+"',apr='"+cons.getApr()+"',may='"+cons.getMay()+"',june='"+cons.getJune()+"',july='"+cons.getJuly()+"',aug='"+cons.getAug()+"',sept='"+cons.getSept()+"',oct='"+cons.getOct()+"',nov='"+cons.getNov()+"',dece='"+cons.getDece()+"',username='"+cons.getUsername()+"'where Id="+cons.getId();
		int rowscount = MysqlHelper.doUpdate(sql);
		return rowscount;
	}
}
