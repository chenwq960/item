package com.example.demo.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dao.UserMapper;
import com.example.demo.form.GetPassword;
import com.example.demo.form.Login;
import com.example.demo.form.SearchParam;
import com.example.demo.form.UserInfo;
import com.example.demo.po.User;
import com.example.demo.savephoto.FileDTD;
import com.example.demo.service.UserService;
import com.example.demo.util.BaiduUtil.IdCardFront;
import com.example.demo.util.CommonUtil;

@Service
@Transactional
@Cacheable(cacheNames = "myCaches")
public class UserServiceImp implements UserService{
	@Autowired
	private UserMapper userMapper;
	@SuppressWarnings("rawtypes")
	@Resource
	private RedisTemplate redisTemplate;
	/**
	 * 显示列表的方法
	 */
	@Override
	@Cacheable(value = "userList")
	public List<User> selectList(SearchParam searchParam) {
		return userMapper.selectList(searchParam);
	}
	/***
	 * 判断账号密码是否正确
	 */
	@Override
	public User login(Login login) {
		int ecode = 0;//账号密码不正确
		try {
			String md5 = CommonUtil.md5(login.getPassword());
			login.setPassword(md5);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		User login2 = userMapper.login(login);
		return login2;
		
		
		
		/**
		 * User user = userService.login(login);
		if (user != null) {
			session.setAttribute("currentUser", user);
			return "redirect:/main.jsp";
		} else {
			session.setAttribute("error", "请仔细核对账号密码");
			return "redirect:/login.jsp";
		}
		 */
	}
	/**
	 * 人员增加
	 */
	@Override
	@CachePut(value = "userList")
	public void create(UserInfo userinfo, FileDTD save, IdCardFront idCardFrontInfo,HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		User model = new User();
		model.setRealName(idCardFrontInfo.getName());		//真实姓名
		model.setNation(idCardFrontInfo.getNation());       //民族
		model.setAddress(idCardFrontInfo.getAddress());     //详细地址
		model.setIdCard(idCardFrontInfo.getIdCard());       //身份证号
		model.setSex((byte) (idCardFrontInfo.getSex()=="女"?2:1));    //性别
		model.setBirthday(new Date());                      //生日
		model.setAccount(userinfo.getAccount());            //账号
		model.setUserName(userinfo.getUserName());          //用户名
		model.setDepartmentId(userinfo.getDepartmentId());  //部门ID
		model.setCreateTime(new Date());                    //创建时间
		model.setCreateUser(user.getUserId());				//创建人
		model.setUpdateTime(new Date());					//修改时间
		model.setUpdateUser(user.getUserId());				//修改人
		model.setIdCardFront(save.getFilePathModel());		//身份证名称
		model.setEmail(userinfo.getEmail());                //添加邮箱
		model.setTel(user.getTel());                        //添加手机号
		//使用MD5加密
		try {
			String md5 = CommonUtil.md5(userinfo.getPassword());
			model.setPassword(md5);                         //密码
			//添加的方法
			userMapper.insertSelective(model);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 查看更详细的方法
	 */
	@Override
	public User meddageDetail(Integer userId) {
		return userMapper.selectByPrimaryKey(userId);
	}
	/**
	 * 找回密码
	 */
	@Override
	public User selectRealNameAndTelete(GetPassword password) {
		return userMapper.selectRealNameAndTelete(password);
	}
	@Override
	public int isNull(String name) {
		int ecode = 0;//已经存在
		User model = userMapper.isNull(name);
		if (model == null) {
			ecode = 1;//不存在，可以
		}
		return ecode;
	}
	/**
	 * 获取验证码
	 */
	@SuppressWarnings("unchecked")
	@Override
	public User getYzm(Login login) {
		try {
			String md5 = CommonUtil.md5(login.getPassword());
			login.setPassword(md5);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		User login2 = userMapper.login(login);
		if(login2 != null) {
			String randomNumData = com.example.demo.util.message.StringUtils.getRandomNumData();
			redisTemplate.boundValueOps(login.getYzm()).set(randomNumData);
			redisTemplate.boundValueOps(login.getYzm()).expire(100,TimeUnit.MINUTES);
			System.out.println("验证码为------------------------"+randomNumData);
		}
		return login2;
//		return null;
	}
}
