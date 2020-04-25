package com.example.demo.util.message;

import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
public class MessageUtils {
	
	public static void sendMessage(String telNum,String yzm) {
		
		String host = "https://cxcdx.market.alicloudapi.com";
	    String path = "/cdcxlongsms/dxjk";
	    String method = "GET";
	    String appcode = "1e85726e47b04e219efd96635c490d7c";
	    Map<String, String> headers = new HashMap<String, String>();
	    //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
	    headers.put("Authorization", "APPCODE " + appcode);
	    Map<String, String> querys = new HashMap<String, String>();
	    querys.put("content", "【八维云计算】您好，您的验证码是:"+yzm+",3分钟内有效");
	    //querys.put("mobile", "18511863871");
	    querys.put("mobile", telNum);
	    try {
	    	/**
	    	* 重要提示如下:
	    	* HttpUtils请从
	    	* https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/src/main/java/com/aliyun/api/gateway/demo/util/HttpUtils.java
	    	* 下载
	    	*
	    	* 相应的依赖请参照
	    	* https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/pom.xml
	    	*/
	    	HttpResponse response = HttpUtils.doGet(host, path, method, headers, querys);
	    	//获取response的body
	    	//System.out.println(EntityUtils.toString(response.getEntity()));
            System.out.println(EntityUtils.toString(response.getEntity()));
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
		
	}

}
