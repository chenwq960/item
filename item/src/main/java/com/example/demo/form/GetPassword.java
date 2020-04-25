package com.example.demo.form;

public class GetPassword {

	private String realName;

	private String telete;

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getTelete() {
		return telete;
	}

	public void setTelete(String telete) {
		this.telete = telete;
	}

	@Override
	public String toString() {
		return "GetPassword [realName=" + realName + ", telete=" + telete + "]";
	}

}
