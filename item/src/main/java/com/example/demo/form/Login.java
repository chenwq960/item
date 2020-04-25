package com.example.demo.form;

public class Login {
	private String account;
	private String password;

	private String yzm;

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

	public String getYzm() {
		return yzm;
	}

	public void setYzm(String yzm) {
		this.yzm = yzm;
	}

	@Override
	public String toString() {
		return "Login [account=" + account + ", password=" + password + ", yzm=" + yzm + "]";
	}

}
