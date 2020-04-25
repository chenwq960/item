package com.example.demo.dao;

import java.util.List;

import com.example.demo.form.SearchParam;
import com.example.demo.po.SaleDevice;

public interface SaleDeviceMapper {
    int deleteByPrimaryKey(Integer recordId);

    int insert(SaleDevice record);

    int insertSelective(SaleDevice record);

    SaleDevice selectByPrimaryKey(Integer recordId);

    int updateByPrimaryKeySelective(SaleDevice record);

    int updateByPrimaryKey(SaleDevice record);

	List<SaleDevice> selectList(SearchParam searchParam);

	void updateSaleDeivceIsDelete(Integer saleDeviceId);
}