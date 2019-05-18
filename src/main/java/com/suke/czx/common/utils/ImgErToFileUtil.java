package com.suke.czx.common.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

/*import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;*/

import org.apache.commons.codec.binary.Base64;
 
/**
 * 将二进制流转换成图片文件
 * @author 晚风工作室 www.soservers.com
 *
 */
 
public class ImgErToFileUtil {
	
	/**
	 * 将接收的字符串转换成图片保存
	 * @param imgStr 二进制流转换的字符串
	 * @param imgPath 图片的保存路径
	 * @param imgName 图片的名称
	 * @return 
	 * 		1：保存正常
	 * 		0：保存失败
	 */
	public static int saveToImgByStr(String imgStr,String imgPath,String imgName){
try {
//	System.out.println("===imgStr.length()====>" + imgStr.length()
//			+ "=====imgStr=====>" + imgStr);
} catch (Exception e) {
	e.printStackTrace();
}
		int stateInt = 1;
		if(imgStr != null && imgStr.length() > 0){
			try {
				System.out.println("dawdawfafawdawdawda");
				// 将字符串转换成二进制，用于显示图片  
				// 将上面生成的图片格式字符串 imgStr，还原成图片显示  
				byte[] imgByte = hex2byte(imgStr);  
				System.out.println(imgByte);
				InputStream in = new ByteArrayInputStream(imgByte);
	
				File file=new File(imgPath,imgName);//可以是任何图片格式.jpg,.png等
				FileOutputStream fos=new FileOutputStream(file);
				  
				byte[] b = new byte[1024];
				int nRead = 0;
				while ((nRead = in.read(b)) != -1) {
					fos.write(b, 0, nRead);
				}
				fos.flush();
				fos.close();
				in.close();
	
			} catch (Exception e) {
				stateInt = 0;
				e.printStackTrace();
			} finally {
			}
		}
		return stateInt;
	}
	
	/**
	 * 将二进制转换成图片保存
	 * @param imgStr 二进制流转换的字符串
	 * @param imgPath 图片的保存路径
	 * @param imgName 图片的名称
	 * @return 
	 * 		1：保存正常
	 * 		0：保存失败
	 */
	public static int saveToImgByBytes(File imgFile,String imgPath,String imgName){
 
		int stateInt = 1;
		if(imgFile.length() > 0){
			System.out.println("dawdawfafawdawdawda");
			try {
				File file=new File(imgPath,imgName);//可以是任何图片格式.jpg,.png等
				System.out.println("bbbbbbbbbb");
				FileOutputStream fos=new FileOutputStream(file);
				
				FileInputStream fis = new FileInputStream(imgFile);
				  
				byte[] b = new byte[1024];
				int nRead = 0;
				while ((nRead = fis.read(b)) != -1) {
					System.out.println("ccccccccc");
					fos.write(b, 0, nRead);
					System.out.println("ddddddddd");
				}
				fos.flush();
				fos.close();
				fis.close();
	
			} catch (Exception e) {
				stateInt = 0;
				e.printStackTrace();
			} finally {
			}
		}
		return stateInt;
	}
 
	/**
	 * 二进制转字符串
	 * @param b
	 * @return
	 */
	public static String byte2hex(byte[] b) // 二进制转字符串
	{
		StringBuffer sb = new StringBuffer();
		String stmp = "";
		for (int n = 0; n < b.length; n++) {
			stmp = Integer.toHexString(b[n] & 0XFF);
			if (stmp.length() == 1) {
				sb.append("0" + stmp);
			} else {
				sb.append(stmp);
			}
 
		}
		return sb.toString();
	}
 
	/**
	 * 字符串转二进制
	 * @param str 要转换的字符串
	 * @return  转换后的二进制数组
	 */
	public static byte[] hex2byte(String str) { // 字符串转二进制
		if (str == null)
			return null;
		str = str.trim();
		int len = str.length();
		System.out.println("23124141wrqwdasd");
		System.out.println(len);
		if (len == 0 || len % 2 == 1)
			return null;
		System.out.println(len);
		System.out.println("aaaaaaaaaaa");
		byte[] b = new byte[len / 2];
		try {
			for (int i = 0; i < str.length(); i += 2) {
				System.out.println(len);
				System.out.println("bbbbbbbbbbb");
				b[i / 2] = (byte) Integer
						.decode("0X" + str.substring(i, i + 2)).intValue();
				System.out.println(len);
			}
			return b;
		} catch (Exception e) {
			return null;
		}
	}
	
	
	
	static void base64StringToImage(String base64String) {
		try {
			byte[] bytes1 = Base64.decodeBase64(base64String);
			
			System.out.println(bytes1);

			ByteArrayInputStream bais = new ByteArrayInputStream(bytes1);
			BufferedImage bi1 = ImageIO.read(bais);
			File w2 = new File("e://QQ.jpg");// 可以是jpg,png,gif格式
			ImageIO.write(bi1, "jpg", w2);// 不管输出什么格式图片，此处不需改动
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
}
