package com.example.demo.dao;

import java.util.List;

import com.example.demo.form.SearchParam;
import com.example.demo.po.Device;

public interface DeviceMapper {
    int deleteByPrimaryKey(Integer deviceId);

    int insert(Device record);

    int insertSelective(Device record);

    Device selectByPrimaryKey(Integer deviceId);

    int updateByPrimaryKeySelective(Device record);

    int updateByPrimaryKey(Device record);

	List<Device> selectList(SearchParam searchParam);

	void updateDeivceIsdelete(Integer deviceId);
}