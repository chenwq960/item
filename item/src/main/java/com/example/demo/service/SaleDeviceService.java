package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.demo.form.SearchParam;
import com.example.demo.po.SaleDevice;

public interface SaleDeviceService {

	List<SaleDevice> selectList(SearchParam searchParam);

	void updateSaleDeivceIsDelete(Integer saleDeviceId);

	void create(SaleDevice saleDevice, HttpSession session);

	SaleDevice detail(Integer saleDeviceId);

	void update(SaleDevice saleDevice, HttpSession session);

}
