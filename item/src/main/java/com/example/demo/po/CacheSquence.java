package com.example.demo.po;

import java.io.Serializable;

public class CacheSquence implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer sequenceId;

	private String sequenceEntity;

	private String sequenceKey;

	private Integer sequenceValue;

	public Integer getSequenceId() {
		return sequenceId;
	}

	public void setSequenceId(Integer sequenceId) {
		this.sequenceId = sequenceId;
	}

	public String getSequenceEntity() {
		return sequenceEntity;
	}

	public void setSequenceEntity(String sequenceEntity) {
		this.sequenceEntity = sequenceEntity == null ? null : sequenceEntity.trim();
	}

	public String getSequenceKey() {
		return sequenceKey;
	}

	public void setSequenceKey(String sequenceKey) {
		this.sequenceKey = sequenceKey == null ? null : sequenceKey.trim();
	}

	public Integer getSequenceValue() {
		return sequenceValue;
	}

	public void setSequenceValue(Integer sequenceValue) {
		this.sequenceValue = sequenceValue;
	}

	@Override
	public String toString() {
		return "CacheSquence [sequenceId=" + sequenceId + ", sequenceEntity=" + sequenceEntity + ", sequenceKey="
				+ sequenceKey + ", sequenceValue=" + sequenceValue + "]";
	}

}