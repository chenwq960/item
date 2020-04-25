package com.example.demo.savephoto;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class fileService {
	
	
	public static FileDTD save(MultipartFile photo, String suffix,String path,String host) {
		FileDTD filedtd = new FileDTD();
		//生成文件名
		String filePath = UUID.randomUUID().toString()+suffix;
		System.out.println("生成的文件名\t     :"+filePath);
		System.out.println("文件服务器和  文件的路径："+path+filePath);
		System.out.println("访问的路径："+host);
		//文件服务器和文件的路径   放到filedtd对象中
		filedtd.setAbsolutePath(path+filePath);
		filedtd.setFilePathModel(filePath);
		File file = new File(path,filePath);
		try {
			photo.transferTo(file);
			System.out.println("放到文件服务器中去了  -----哈哈哈");
		} catch (IllegalStateException | IOException e) {
			System.out.println("没有放到文件服务器中  -----失败");
			e.printStackTrace();
		}
		return filedtd;
	}
}
