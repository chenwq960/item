package com.example.demo.po;

import java.io.Serializable;
import java.util.Date;

public class Log  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer logId;

	private String logUrl;

	private Date logStartTime;

	private Long logEndTime;

	private Date logStayTime;

	private String logParam;

	private String logCurrentuser;

	public Integer getLogId() {
		return logId;
	}

	public void setLogId(Integer logId) {
		this.logId = logId;
	}

	public String getLogUrl() {
		return logUrl;
	}

	public void setLogUrl(String logUrl) {
		this.logUrl = logUrl == null ? null : logUrl.trim();
	}

	public Date getLogStartTime() {
		return logStartTime;
	}

	public void setLogStartTime(Date logStartTime) {
		this.logStartTime = logStartTime;
	}

	public Long getLogEndTime() {
		return logEndTime;
	}

	public void setLogEndTime(Long logEndTime) {
		this.logEndTime = logEndTime;
	}

	public Date getLogStayTime() {
		return logStayTime;
	}

	public void setLogStayTime(Date logStayTime) {
		this.logStayTime = logStayTime;
	}

	public String getLogParam() {
		return logParam;
	}

	public void setLogParam(String logParam) {
		this.logParam = logParam == null ? null : logParam.trim();
	}

	public String getLogCurrentuser() {
		return logCurrentuser;
	}

	public void setLogCurrentuser(String logCurrentuser) {
		this.logCurrentuser = logCurrentuser == null ? null : logCurrentuser.trim();
	}

	@Override
	public String toString() {
		return "Log [logId=" + logId + ", logUrl=" + logUrl + ", logStartTime=" + logStartTime + ", logEndTime="
				+ logEndTime + ", logStayTime=" + logStayTime + ", logParam=" + logParam + ", logCurrentuser="
				+ logCurrentuser + "]";
	}

}