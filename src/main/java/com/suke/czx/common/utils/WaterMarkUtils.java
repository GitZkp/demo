package com.suke.czx.common.utils;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;

import sun.java2d.SunGraphics2D;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.imageio.ImageIO;

public class WaterMarkUtils {
	
	 /**
     * @param srcImgPath 源图片路径
     * @param tarImgPath 保存的图片路径
     * @param waterMarkContent 水印内容
     * @param markContentColor 水印颜色
     * @param font 水印字体
     */
    public static void addWaterMark(String srcImgPath, String tarImgPath, String waterMarkContent,Color markContentColor,Font font) {

        try {
            // 读取原图片信息
            File srcImgFile = new File(srcImgPath);//得到文件
            Image srcImg = ImageIO.read(srcImgFile);//文件转化为图片
            int srcImgWidth = srcImg.getWidth(null);//获取图片的宽
            int srcImgHeight = srcImg.getHeight(null);//获取图片的高
//            System.out.print("kfkgdooemslefk");
            // 加水印
            BufferedImage bufImg = new BufferedImage(srcImgWidth, srcImgHeight, BufferedImage.TYPE_INT_RGB);
            Graphics2D g = bufImg.createGraphics();
            g.drawImage(srcImg, 0, 0, srcImgWidth, srcImgHeight, null);
            g.setColor(markContentColor); //根据图片的背景设置水印颜色
            g.setFont(font);              //设置字体

            //设置水印的坐标
            int x = 55;  
            int y = 75;  
            g.drawString(waterMarkContent, x, y);  //画出水印
            g.dispose();  
            // 输出图片  
//            System.out.print("dasdasdajjfkdf");
            FileOutputStream outImgStream = new FileOutputStream(tarImgPath);  
            ImageIO.write(bufImg, "jpg", outImgStream);
//            System.out.println("添加水印完成");  
            outImgStream.flush();  
            outImgStream.close();  

        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    public static int getWatermarkLength(String waterMarkContent, Graphics2D g) {  
        return g.getFontMetrics(g.getFont()).charsWidth(waterMarkContent.toCharArray(), 0, waterMarkContent.length());  
    }
    
    public static boolean dayin (final String content,String srcImgPath,final String tarImgPath) {
        Font font = new Font("微软雅黑", Font.PLAIN, 30);                     //水印字体
        /*String srcImgPath="D:/1.jpg"; //源图片地址
        String tarImgPath="D:/2.jpg"; //待存储的地址*/
        Color color=new Color(0,0,0,250);                               //水印图片色彩以及透明度
        addWaterMark(srcImgPath, tarImgPath, content, color,font);
//        System.out.print("hhdhadhahsd");
        //定时五秒删除文件
        final ScheduledExecutorService service = Executors
                .newSingleThreadScheduledExecutor();
//        System.out.print("执行了吗");
    	service.schedule(new Job(){
    		public void run() {
//    			final String tarImgPath="D:/2.jpg"; //待存储的地址
    			File file=new File(tarImgPath);
//    			System.out.print("删除了吗");
    			if(file.exists()&&file.isFile()){
    				file.delete();
//    				System.out.println("删除成功");
    			}
    		
    		}

    	}, 15 * 60 * 1000, TimeUnit.MILLISECONDS);
        /*try {
			final Timer timer = new Timer();
			timer.schedule(new TimerTask(){
				@Override
				public void run() {
					File file=new File(tarImgPath+"\\"+content+".jpg");
					if(file.exists()&&file.isFile()){
						file.delete();
						System.out.println("删除成功");
					}
				timer.cancel();
				}
			},5*1000);*/
		/*} catch (Exception e) {
			e.printStackTrace();
		}*/
		return true;
        

    }
    
    public static void main(String[] args) {
    	 Font font = new Font("微软雅黑", Font.PLAIN, 30);                     //水印字体
         String srcImgPath="D:/1.jpg"; //源图片地址
         final String tarImgPath="D:/2.jpg"; //待存储的地址
         String waterMarkContent="666";  //水印内容
         Color color=new Color(0,0,0,250);                               //水印图片色彩以及透明度
    	addWaterMark(srcImgPath, tarImgPath, waterMarkContent, color, font);
    	final ScheduledExecutorService service = Executors
                .newSingleThreadScheduledExecutor();
    	service.schedule(new Job(), 5000, TimeUnit.MILLISECONDS);
	}
	
	}

