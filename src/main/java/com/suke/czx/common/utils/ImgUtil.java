package com.suke.czx.common.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;

import javax.swing.ImageIcon;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageDecoder;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImgUtil {

	/*public static void main(String[] args) throws ParseException, IOException {
		String bigImg = "E:\\nobosstest\\base.jpg";
		String codeImg = "E:\\nobosstest\\code.jpg";
		String content = "郑少旭";
		

		createTestResultImg(bigImg, codeImg, content,smallCodeImg,outPath);
	}
*/
	/**
	 * 
	 * 生成测试结果图
	 * 
	 * @param bigImg
	 *            底图
	 * @param codeImg
	 *            二维码图(未压缩)
	 * @param content
	 *            名字
	 * @return 生成图片地址
	 * @throws IOException 
	 */
	public static String createTestResultImg(String bigImg, String codeImg, String content,String smallCodeImg,String outPath) throws IOException {
		/*String smallCodeImg = "E:\\nobosstest\\smallcode.jpg";
		String outPath = "E:\\nobosstest\\rs.jpg";*/
		//压缩二维码
		ReduceImgUtil.reduceImg(codeImg, smallCodeImg, 101, 101, null);
		//生成结果图
		bigImgAddSmallImgAndText(bigImg, smallCodeImg, 490, 939, content, 56, 70, outPath);
		return outPath;
	}

	/***
	 * 在一张大图张添加小图和文字
	 * 
	 * @param bigImgPath
	 *            大图的路径
	 * @param smallImgPath
	 *            小图的路径
	 * @param sx
	 *            小图在大图上x轴位置
	 * @param sy
	 *            小图在大图上y轴位置
	 * @param content
	 *            文字内容
	 * @param cx
	 *            文字在大图上x轴位置
	 * @param cy
	 *            文字在大图上y轴位置
	 * @param outPathWithFileName
	 *            结果输出路径
	 */
	public static void bigImgAddSmallImgAndText(String bigImgPath, String smallImgPath, int sx, int sy, String content,
			int cx, int cy, String outPathWithFileName) throws IOException {
		// 主图片的路径
		InputStream is = new FileInputStream(bigImgPath);
		// 通过JPEG图象流创建JPEG数据流解码器
		JPEGImageDecoder jpegDecoder = JPEGCodec.createJPEGDecoder(is);
		// 解码当前JPEG数据流，返回BufferedImage对象
		BufferedImage buffImg = jpegDecoder.decodeAsBufferedImage();
		// 得到画笔对象
		Graphics g = buffImg.getGraphics();

		// 小图片的路径
		ImageIcon imgIcon = new ImageIcon(smallImgPath);
		// 得到Image对象。
		Image img = imgIcon.getImage();
		// 将小图片绘到大图片上,5,300 .表示你的小图片在大图片上的位置。
		g.drawImage(img, sx, sy, null);
		// 设置颜色。
		g.setColor(Color.WHITE);

		// 最后一个参数用来设置字体的大小
		if (content != null) {
			Font f = new Font("微软雅黑", 400, 23);
			Color mycolor = new Color(71, 80, 95);
			g.setColor(mycolor);
			g.setFont(f);
			g.drawString(content, cx, cy); // 表示这段文字在图片上的位置(cx,cy) .第一个是你设置的内容。
		}
		g.dispose();
		OutputStream os = new FileOutputStream(outPathWithFileName);
		// 创键编码器，用于编码内存中的图象数据。
		JPEGImageEncoder en = JPEGCodec.createJPEGEncoder(os);
		en.encode(buffImg);
		is.close();
		os.close();
	}

}
