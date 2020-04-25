package com.example.demo.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dao.UserMapper;
import com.example.demo.form.Login;
import com.example.demo.form.SearchParam;
import com.example.demo.form.UserInfo;
import com.example.demo.po.Department;
import com.example.demo.po.Role;
import com.example.demo.po.User;
import com.example.demo.savephoto.FileDTD;
import com.example.demo.savephoto.fileService;
import com.example.demo.service.DepartmentService;
import com.example.demo.service.RoleService;
import com.example.demo.service.UserService;
import com.example.demo.util.BaiduUtil;
import com.example.demo.util.BaiduUtil.IdCardFront;
import com.example.demo.util.SendMailUtil;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	// 注入角色
	@Autowired
	private RoleService roleservice;
	// 注入部门
	@Autowired
	private DepartmentService departmentService;
	@SuppressWarnings("rawtypes")
	@Resource
	private RedisTemplate redisTemplate;
	@Resource
	private UserMapper userMapper;
	

	@Value("${file.workpath}") // 文件的真实路径
	private String path;
	@Value("${file.host}")		//文件的虚拟路径
	private String host;

	/**
	 * 用户列表查询
	 * 
	 * @param searchParam
	 * @param modelMap
	 * @return
	 * @return
	 */

	@RequestMapping("/list/page")
	public String selectList(SearchParam searchParam, ModelMap modelMap) {
		List<User> list = userService.selectList(searchParam);
		modelMap.put("list", list);
		return "user/list";
	}
	/**
	 * 登录验证
	 * 
	 * @return
	 */
	@SuppressWarnings("unused")
	@RequestMapping("/login")
	public String Login(Login login, HttpSession session, HttpServletRequest request) {
		User user = userService.login(login);
		@SuppressWarnings("unchecked")
		String yzm = (String) redisTemplate.boundValueOps(user.getTel()).get();
//		if(login.getYzm().equals(yzm)) {
//			System.out.println("验证码不正确-------------------------------");
//		}
		// && login.getYzm().equals(yzm)
		if (user != null) {
			session.setAttribute("currentUser", user);
			return "redirect:/main.jsp";
		} else {
			session.setAttribute("error", "请仔细核对账号密码,");
			return "redirect:/login.jsp";
		}
	}
	
	/**
	 * 获取验证码
	 */
	@ResponseBody	
	@RequestMapping("/getYzm")
	public String getYzm(Login login) {
		userService.getYzm(login);
		return "OK";
	}
	
	/**
	 * 增加跳转页面
	 * 
	 * @return
	 */
	@RequestMapping("/add/page")
	public String addPage(ModelMap modelMap) {
		// 担任角色
		List<Role> role = roleservice.selectList(null);
		modelMap.put("role", role);
		// 所属部门
		List<Department> department = departmentService.selectList(null);
		modelMap.put("department", department);
		return "user/create";
	}
	/**
	 * 增加的方法
	 * @return 
	 */
	@RequestMapping("/create")
	public String create(UserInfo userinfo, MultipartFile photo, HttpSession session) {
		FileDTD save = fileService.save(photo, ".png", path, host);
		IdCardFront idCardFrontInfo = BaiduUtil.getIdCardFrontInfo(save.getAbsolutePath());
		// System.out.println(userinfo+"-------------------------------");
		userService.create(userinfo, save, idCardFrontInfo, session);
		return "redirect:list/page";
		// System.out.println(idCardFrontInfo+"+百度返回的对象");
		// System.out.println(save.getAbsolutePath()+"即将去往百度接口的参数----------------------");
//		System.out.println(photo.getOriginalFilename()+"**********************************");
	}
	/**
	 * 查看更详细的方法
	 * @return 
	 */
	@RequestMapping("/messageDetail")
	public String messageDetail(Integer userId,ModelMap modelMap) {
		User userDetail = userService.meddageDetail(userId);
		userDetail.setIdCardFront(host+userDetail.getIdCardFront());
		modelMap.put("user",userDetail);
		return "user/detail";
		
	}
	/**
	 * 账号是否存在
	 * @param paramEmail
	 * @return 
	 */
	@ResponseBody
	@RequestMapping("/isNull")
	public Integer isNull(String name) {
		int ecode = userService.isNull(name);
		return ecode;
	}
	/**
	 * 找回密码
	 * @return 
	 */
	@ResponseBody
	@RequestMapping("/get/password")
	public String getPassword(String name) {
		User password = userMapper.getPassword(name);
		SendMailUtil.send(password);
		return name;
	}

}
