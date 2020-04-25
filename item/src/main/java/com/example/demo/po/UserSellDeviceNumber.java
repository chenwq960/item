package com.example.demo.po;

import java.io.Serializable;

public class UserSellDeviceNumber  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String account;

	private Integer num;

	public UserSellDeviceNumber() {
		super();
	}

	public UserSellDeviceNumber(String account, Integer num) {
		super();
		this.account = account;
		this.num = num;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "UserSellDeviceNumber [account=" + account + ", num=" + num + "]";
	}

}
