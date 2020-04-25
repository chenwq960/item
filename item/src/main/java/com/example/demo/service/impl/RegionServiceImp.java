package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.RegionMapper;
import com.example.demo.po.Region;
import com.example.demo.service.RegionService;

@Service
public class RegionServiceImp implements RegionService {
	@Autowired
	private RegionMapper regionMapper;

	@Override
	public List<Region> selectList(Integer id) {
		return regionMapper.selectList(id);
	}
	
	

}
