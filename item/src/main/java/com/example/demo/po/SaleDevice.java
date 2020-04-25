package com.example.demo.po;

import java.io.Serializable;
import java.util.Date;

public class SaleDevice  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer recordId;

	private Integer stationId;

	private Integer deviceId;

	private Integer saleUser;

	private Date saleTime;

	private Integer saleNumber;

	private String remark;

	private Integer createUser;

	private Date createTime;

	private Integer updateUser;

	private Date updateTime;

	private Boolean isDelete;

	private Station stationNameModel;

	private Device diviceNameModel;

	private User userNameModel;

	public Integer getRecordId() {
		return recordId;
	}

	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}

	public Integer getStationId() {
		return stationId;
	}

	public void setStationId(Integer stationId) {
		this.stationId = stationId;
	}

	public Integer getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	public Integer getSaleUser() {
		return saleUser;
	}

	public void setSaleUser(Integer saleUser) {
		this.saleUser = saleUser;
	}

	public Date getSaleTime() {
		return saleTime;
	}

	public void setSaleTime(Date saleTime) {
		this.saleTime = saleTime;
	}

	public Integer getSaleNumber() {
		return saleNumber;
	}

	public void setSaleNumber(Integer saleNumber) {
		this.saleNumber = saleNumber;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getCreateUser() {
		return createUser;
	}

	public void setCreateUser(Integer createUser) {
		this.createUser = createUser;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(Integer updateUser) {
		this.updateUser = updateUser;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

	public Station getStationNameModel() {
		return stationNameModel;
	}

	public void setStationNameModel(Station stationNameModel) {
		this.stationNameModel = stationNameModel;
	}

	public Device getDiviceNameModel() {
		return diviceNameModel;
	}

	public void setDiviceNameModel(Device diviceNameModel) {
		this.diviceNameModel = diviceNameModel;
	}

	public User getUserNameModel() {
		return userNameModel;
	}

	public void setUserNameModel(User userNameModel) {
		this.userNameModel = userNameModel;
	}

	@Override
	public String toString() {
		return "SaleDevice [recordId=" + recordId + ", stationId=" + stationId + ", deviceId=" + deviceId
				+ ", saleUser=" + saleUser + ", saleTime=" + saleTime + ", saleNumber=" + saleNumber + ", remark="
				+ remark + ", createUser=" + createUser + ", createTime=" + createTime + ", updateUser=" + updateUser
				+ ", updateTime=" + updateTime + ", isDelete=" + isDelete + ", stationNameModel=" + stationNameModel
				+ ", diviceNameModel=" + diviceNameModel + ", userNameModel=" + userNameModel + "]";
	}

}