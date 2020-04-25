package com.example.demo.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.example.demo.dao.SaleDeviceMapper;
import com.example.demo.form.SearchParam;
import com.example.demo.po.SaleDevice;
import com.example.demo.po.User;
import com.example.demo.service.SaleDeviceService;

@Service
@Cacheable(cacheNames = "myCaches")
public class SaleDeviceServiceImp implements SaleDeviceService{
	@Autowired
	private SaleDeviceMapper saleDeviceMapper;
	/**
	 * 列表查询
	 */
	@Override
	@Cacheable(value = "saleDeviceList")
	public List<SaleDevice> selectList(SearchParam searchParam) {
		return saleDeviceMapper.selectList(searchParam);
	}
	/**
	 *模拟删除
	 */
	@Override
	public void updateSaleDeivceIsDelete(Integer saleDeviceId) {
		saleDeviceMapper.updateSaleDeivceIsDelete(saleDeviceId);
		
	}
	/**
	 * 增加的方法
	 */
	@Override
	@CachePut(value = "saleDeviceList")
	public void create(SaleDevice saleDevice, HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		saleDevice.setSaleTime(new Date());
		saleDevice.setCreateUser(user.getUserId());
		saleDevice.setCreateTime(new Date());
		saleDevice.setUpdateUser(user.getUserId());
		saleDevice.setUpdateTime(new Date());
//		System.out.println(saleDevice+"------------------------------------------");
		saleDeviceMapper.insertSelective(saleDevice);
		
	}
	/**
	 * 查看详细
	 */
	@Override
	public SaleDevice detail(Integer saleDeviceId) {
		return saleDeviceMapper.selectByPrimaryKey(saleDeviceId);
	}
	/**
	 * 修改的方法
	 */
	@Override
	@CachePut(value = "saleDeviceList")
	public void update(SaleDevice saleDevice, HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		saleDevice.setCreateUser(user.getUserId());
		saleDevice.setUpdateTime(new Date());
		saleDeviceMapper.updateByPrimaryKeySelective(saleDevice);
		
	}

}
