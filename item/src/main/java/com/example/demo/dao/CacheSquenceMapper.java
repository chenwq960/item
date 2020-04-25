package com.example.demo.dao;

import com.example.demo.form.EnumTest;
import com.example.demo.po.CacheSquence;

public interface CacheSquenceMapper {
    int deleteByPrimaryKey(Integer sequenceId);

    int insert(CacheSquence record);

    int insertSelective(CacheSquence record);

    CacheSquence selectByPrimaryKey(Integer sequenceId);

    int updateByPrimaryKeySelective(CacheSquence record);

    int updateByPrimaryKey(CacheSquence record);

	CacheSquence getAllbyType(EnumTest device);
}