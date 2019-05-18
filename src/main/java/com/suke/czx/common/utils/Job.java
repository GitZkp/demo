package com.suke.czx.common.utils;

import java.io.File;

public class Job implements Runnable{
	

	public void run() {
		final String tarImgPath="D:/2.jpg"; //待存储的地址
		File file=new File(tarImgPath+"\\"+2+".jpg");
		if(file.exists()&&file.isFile()){
			file.delete();
			System.out.println("删除成功");
	
	}
	}
	

}
