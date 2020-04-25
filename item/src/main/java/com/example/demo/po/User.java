package com.example.demo.po;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer userId;

	private Integer departmentId;

	private String account;

	private String password;

	private String userName;

	private String realName;

	private Byte sex;

	private Date birthday;

	private String nation;

	private String idCard;

	private String idCardFront;

	private String idCardBack;

	private String address;

	private Date createTime;

	private Integer createUser;

	private Date updateTime;

	private Integer updateUser;

	private Boolean isDelete;

	private String departmentName;

	private String email;

	private String tel;

	public User() {
		super();
	}

	public User(Integer userId, Integer departmentId, String account, String password, String userName, String realName,
			Byte sex, Date birthday, String nation, String idCard, String idCardFront, String idCardBack,
			String address, Date createTime, Integer createUser, Date updateTime, Integer updateUser, Boolean isDelete,
			String departmentName, String email, String tel) {
		super();
		this.userId = userId;
		this.departmentId = departmentId;
		this.account = account;
		this.password = password;
		this.userName = userName;
		this.realName = realName;
		this.sex = sex;
		this.birthday = birthday;
		this.nation = nation;
		this.idCard = idCard;
		this.idCardFront = idCardFront;
		this.idCardBack = idCardBack;
		this.address = address;
		this.createTime = createTime;
		this.createUser = createUser;
		this.updateTime = updateTime;
		this.updateUser = updateUser;
		this.isDelete = isDelete;
		this.departmentName = departmentName;
		this.email = email;
		this.tel = tel;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Byte getSex() {
		return sex;
	}

	public void setSex(Byte sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getIdCardFront() {
		return idCardFront;
	}

	public void setIdCardFront(String idCardFront) {
		this.idCardFront = idCardFront;
	}

	public String getIdCardBack() {
		return idCardBack;
	}

	public void setIdCardBack(String idCardBack) {
		this.idCardBack = idCardBack;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Integer createUser) {
		this.createUser = createUser;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(Integer updateUser) {
		this.updateUser = updateUser;
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", departmentId=" + departmentId + ", account=" + account + ", password="
				+ password + ", userName=" + userName + ", realName=" + realName + ", sex=" + sex + ", birthday="
				+ birthday + ", nation=" + nation + ", idCard=" + idCard + ", idCardFront=" + idCardFront
				+ ", idCardBack=" + idCardBack + ", address=" + address + ", createTime=" + createTime + ", createUser="
				+ createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", isDelete=" + isDelete
				+ ", departmentName=" + departmentName + ", email=" + email + ", tel=" + tel + "]";
	}

}