package com.org.service;

import java.util.Map;

import com.org.domain.Constitution;

public interface ConsService {
	Map getConsById(int id);
	Map getConsMsgByid(int id);
	int add(Constitution cons);
	int Mod(Constitution cons);
	int Del(int id);
}
