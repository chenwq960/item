package com.example.demo.form;

import java.io.Serializable;

public class SearchParam implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String searchKey;

	private String addressName;

	private String startTime;

	private String endTime;

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	@Override
	public String toString() {
		return "SearchParam [searchKey=" + searchKey + ", addressName=" + addressName + ", startTime=" + startTime
				+ ", endTime=" + endTime + "]";
	}

}
