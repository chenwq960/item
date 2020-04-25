package com.example.demo.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.example.demo.dao.CacheSquenceMapper;
import com.example.demo.dao.DeviceMapper;
import com.example.demo.form.EnumTest;
import com.example.demo.form.SearchParam;
import com.example.demo.po.CacheSquence;
import com.example.demo.po.Device;
import com.example.demo.po.User;
import com.example.demo.service.DeviceService;
@Service
@CacheConfig(cacheNames = "myCaches")
public class DeviceServiceImp implements DeviceService{
	@Autowired
	private DeviceMapper deviceMapper;
	//注入序列号的表格
	@Autowired
	private CacheSquenceMapper cacheSquenceMapper;
	/**
	 * 列表查询
	 */
	@Override
	@Cacheable(value = "deviceList")
	public List<Device> selectList(SearchParam searchParam) {
		return deviceMapper.selectList(searchParam);
	}
	/**
	 * 模拟删除
	 */
	@Override
	public void updateDeivceIsdelete(Integer deviceId) {
		deviceMapper.updateDeivceIsdelete(deviceId);
		
	}
	/**
	 * 设备增加
	 */
	@Override
	@CachePut(value ="deviceList")
	public void create(Device device,HttpSession session) {
		//定义一个变量    存储设备编号
		//String num = null;
		User user = (User) session.getAttribute("currentUser");
		device.setCreateTime(new Date());
		device.setCreateUser(user.getUserId());
		device.setUpdateTime(new Date());
		device.setUpdateUser(user.getUserId());
		System.out.println(device);
		/**
		 * 查询序列号表   如果相同则在他的基础上+1
		 * 如果不相同  则替换掉他的  年月序列号 并且清空  随机序列号
		 */
		
		//1:从枚举类中取出来 根据条件查询 筛选出来 是设备的    查询
		CacheSquence cache = cacheSquenceMapper.getAllbyType(EnumTest.DEVICE);
		//获取当前的时间    和  从数据中的做对比
		SimpleDateFormat df = new SimpleDateFormat("yyMM");
		String dateTime=df.format(new Date());
		
		//获取从数据库中传的值
		String sequenceKey = cache.getSequenceKey();
		if(sequenceKey==dateTime) {
			//不相等的话就调用修改语句
			//吧当前时间付给数据库
//			System.out.println("--------------不相等");
			cache.setSequenceKey(dateTime);
			System.out.println(dateTime);
			cache.setSequenceValue(0);
			cacheSquenceMapper.updateByPrimaryKey(cache);
		}else {
			//不相等则   证明还是本月时间  则取出来 他的value数值  在原先的基础上+1
			Integer sequenceValue = cache.getSequenceValue();
		//	num = sequenceValue+"";
//			System.out.println("---------------------相等");
			cache.setSequenceValue(++sequenceValue);
			cacheSquenceMapper.updateByPrimaryKey(cache);
		}
		//System.out.println(String.format("%06d",num));
		
		
		System.out.println(cache);
		System.out.println(cache.getSequenceKey());
		device.setDeviceCode(cache.getSequenceKey()+cache.getSequenceValue());
		
		//调用增加的方法
//		System.out.println(device+"------------------------------------------");
		
		deviceMapper.insertSelective(device);
		
	}
	/**
	 * 回显的方法
	 */
	@Override
	public Device detail(Integer deviceId) {
		return deviceMapper.selectByPrimaryKey(deviceId);
	}
	/**
	 * 修改的方法
	 */
	@Override
	@CachePut(value ="deviceList")
	public void update(Device device,HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		device.setUpdateTime(new Date());
		device.setUpdateUser(user.getUserId());
		deviceMapper.updateByPrimaryKeySelective(device);
		
	}

}
