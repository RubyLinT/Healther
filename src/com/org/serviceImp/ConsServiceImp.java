package com.org.serviceImp;

import java.util.Map;

import com.org.dao.ConstitutionDao;
import com.org.domain.Constitution;
import com.org.service.ConsService;

public class ConsServiceImp implements ConsService {

	@Override
	public Map getConsById(int id) {
		Map cons = new ConstitutionDao().getConsById(id);
		return cons;
	}

	@Override
	public int add(Constitution cons) {
		int rowscount = new ConstitutionDao().insert(cons);
		return rowscount;
	}

	@Override
	public int Mod(Constitution cons) {
		int rowscount = new ConstitutionDao().Update(cons);
		return rowscount;
	}

	@Override
	public int Del(int id) {
		int flag = new ConstitutionDao().delCons(id);
		return flag;
	}

	@Override
	public Map getConsMsgByid(int id) {
		Map cons = new ConstitutionDao().getConsMsgById(id);
		return cons;
	}


}
