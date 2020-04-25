package com.example.demo.po;

import java.io.Serializable;
import java.util.Date;

public class Role  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer roleId;

	private String roleName;

	private Date createTime;

	private Integer createUser;

	private Date updateTime;

	private Integer updateUser;

	private Boolean isDelete;

	private String createUserName;// 创建人

	private String updateUserName;// 修改人

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
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

	public String getCreateUserName() {
		return createUserName;
	}

	public void setCreateUserName(String createUserName) {
		this.createUserName = createUserName;
	}

	public String getUpdateUserName() {
		return updateUserName;
	}

	public void setUpdateUserName(String updateUserName) {
		this.updateUserName = updateUserName;
	}

	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", createTime=" + createTime + ", createUser="
				+ createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", isDelete=" + isDelete
				+ ", createUserName=" + createUserName + ", updateUserName=" + updateUserName + "]";
	}

	public Role() {
		super();
	}

	public Role(Integer roleId, String roleName, Date createTime, Integer createUser, Date updateTime,
			Integer updateUser, Boolean isDelete, String createUserName, String updateUserName) {
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.createTime = createTime;
		this.createUser = createUser;
		this.updateTime = updateTime;
		this.updateUser = updateUser;
		this.isDelete = isDelete;
		this.createUserName = createUserName;
		this.updateUserName = updateUserName;
	}

}