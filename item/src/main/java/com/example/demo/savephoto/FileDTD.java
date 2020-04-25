package com.example.demo.savephoto;

public class FileDTD {
	private String AbsolutePath; // 文件绝对路径
	
	private String filePathModel;

	public FileDTD() {
		super();
	}

	@Override
	public String toString() {
		return "FileDTD [AbsolutePath=" + AbsolutePath + ", filePathModel=" + filePathModel + "]";
	}

	public String getAbsolutePath() {
		return AbsolutePath;
	}

	public void setAbsolutePath(String absolutePath) {
		AbsolutePath = absolutePath;
	}

	public String getFilePathModel() {
		return filePathModel;
	}

	public void setFilePathModel(String filePathModel) {
		this.filePathModel = filePathModel;
	}

}
