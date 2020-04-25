package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.LogMapper;
import com.example.demo.po.Log;
import com.example.demo.service.LogService;

@Service
public class LogServiceImp implements LogService{
	@Autowired
	private LogMapper logMapper;
	//增加的方法
	@Override
	public Integer create(Log log) {
		//logMapper.insertSelective(log);
		return log.getLogId();
	}
	//根据id查询
	@Override
	public Log detail(Integer logId) {
		return logMapper.selectByPrimaryKey(logId);
	}
	//修改
	@Override
	public void update(Log log) {
		logMapper.updateByPrimaryKey(log);
		
	}
	

}
