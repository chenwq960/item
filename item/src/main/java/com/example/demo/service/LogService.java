package com.example.demo.service;

import com.example.demo.po.Log;

public interface LogService{
	
	Integer create(Log log);

	Log detail(Integer attribute);

	void update(Log log);

}
