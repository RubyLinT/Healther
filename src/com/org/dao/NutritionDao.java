package com.org.dao;

import java.util.Map;
import com.org.domain.Nutrition;
import com.org.util.MysqlHelper;

public class NutritionDao {
	public int insert(Nutrition nut) {
		String sql="insert into nutrition(username,jan,feb,mar,apr,may,june,july,apr,sept,oct,nov,dece) values('"+nut.getUsername()+"','"+nut.getJan()+"','"+nut.getFeb()+"','"+nut.getMar()+"','"+nut.getApr()+"','"+nut.getMay()+"','"+nut.getJune()+"','"+nut.getJuly()+"','"+nut.getAug()+"','"+nut.getSept()+"','"+nut.getOct()+"','"+nut.getNov()+"','"+nut.getDece()+"')";
		int rowscount=MysqlHelper.doUpdate(sql);
		return rowscount;
	}
	public Map getNutById(int id) {
		String sql="select * from nutrition where Id="+id;
		Map nut=MysqlHelper.getOne(sql);
		return nut;
	}
	public Map getNutMsgById(int id) {
		String sql="select jan,feb,mar,apr,may,june,july,aug,sept,oct,nov,dece from nutrition where Id="+id;
		Map nut=MysqlHelper.getOne(sql);
		return nut;
	}
	public int delNut(int id) {
		String sql="delete form nutrition where Id="+id;
		int flag=MysqlHelper.doUpdate(sql);
		return flag;
	}
	public int Update(Nutrition nut) {
		String sql="update nutrition set jan='"+nut.getJan()+"',feb='"+nut.getFeb()+"',mar='"+nut.getMar()+"',apr='"+nut.getApr()+"',may='"+nut.getMay()+"',june='"+nut.getJune()+"',july='"+nut.getJuly()+"',aug='"+nut.getAug()+"',sept='"+nut.getSept()+"',oct='"+nut.getOct()+"',nov='"+nut.getNov()+"',dece='"+nut.getDece()+"',username='"+nut.getUsername()+"'where Id="+nut.getId();
		int rowscount = MysqlHelper.doUpdate(sql);
		return rowscount;
	}
}
