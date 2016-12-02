package com.org.serviceImp;

import java.util.Map;
import com.org.dao.NutritionDao;
import com.org.domain.Nutrition;
import com.org.service.NutritionService;

public class NutritionServiceImp implements NutritionService {

	@Override
	public Map getNutById(int id) {
		Map nut = new NutritionDao().getNutById(id);
		return nut;
	}

	@Override
	public Map getNutMsgByid(int id) {
		Map nut = new NutritionDao().getNutMsgById(id);
		return nut;
	}

	@Override
	public int add(Nutrition nut) {
		int rowscount = new NutritionDao().insert(nut);
		return rowscount;
	}

	@Override
	public int Mod(Nutrition nut) {
		int rowscount = new NutritionDao().Update(nut);
		return rowscount;
	}

	@Override
	public int Del(int id) {
		int flag = new NutritionDao().delNut(id);
		return flag;
	}

}
