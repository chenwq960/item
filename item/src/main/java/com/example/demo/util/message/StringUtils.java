package com.example.demo.util.message;

import java.util.Random;

public class StringUtils {
	
	public static void main(String[] args) {
		//随机生成一个4位数       1000-9999
		Random random = new Random();   //创建随机对象
		//生成随机数
		//int nextInt = random.nextInt(10);   //代表生成0到10之间任意一个整数,注意不包含边界最大值
		//System.out.println(nextInt);
		String yzm = "";
		for (int i = 0; i < 4; i++) {
			yzm = yzm+random.nextInt(10)+"";
		}
	}
	
	
	/*
	 * int randNumber =rand.nextInt(MAX - MIN + 1) + MIN;
	 */
	public static String getRandomNumData() {
		/*
		Random random = new Random();   //创建随机对象
		String yzm = "";
		String num = null;
		for (int i = 0; i < 4; i++) {
			yzm = yzm+random.nextInt(10)+"";
		}
		*/
		return new Random().nextInt(9999 - 1000 + 1) + 1000+"";
	}

}
