package com.org.service;

import java.util.Map;

import com.org.domain.Nutrition;

public interface NutritionService {
	Map getNutById(int id);
	Map getNutMsgByid(int id);
	int add(Nutrition nut);
	int Mod(Nutrition nut);
	int Del(int id);
}
