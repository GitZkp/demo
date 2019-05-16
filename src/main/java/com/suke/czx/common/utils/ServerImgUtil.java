package com.suke.czx.common.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import com.suke.czx.common.utils.JedisUtils;
//import com.thinkgem.jeesite.modules.noboss.util.ZimgClient.ZimgResult;

import lombok.extern.log4j.Log4j;
import sun.util.logging.resources.logging;

/**
 * 
 * 文件服务器图片交互
 * @author zsx
 *
 */
@Log4j
public class ServerImgUtil {
	//文件服务器上的路径
	private static final String SERVER_KEY_SUFFIX = "_server_img_path";
	//本地存储的相对路径
	private static final String RELATIE_KEY_SUFFIX = "_relative_img_path";
	//图片后缀
	private static final String IMG_SUFFIX = ".jpg";
	
	/**
	 * 生成图片时,先生成到web项目中,然后上传到图片服务器,并将文件服务器上的图片地址和本地的图片地址同时保存起来
	 * @param key
	 * @param relativePath 相对路径
	 * @param absolutePath 绝对路径
	 */
	public static void saveImg(String key,String relativePath,String absolutePath){
//        ZimgResult ret = new ZimgClient().uploadImg(absolutePath);
//        if(ret.isRet()){
//        	JedisUtils.set(key+RELATIE_KEY_SUFFIX, relativePath, 0);
//        	JedisUtils.set(key+SERVER_KEY_SUFFIX, ret.getImageUrl(), 0);
//        }
	}
	
	/**
	 * 获取图片时,先去本地看是否有图片,没有就从图片服务器下载
	 * @param key
	 * @param contextPath 项目物理路径父路径
	 * @param relativeDir 目录
	 * @return 相对路径
	 */
	public static String getImg(String key,String contextPath,String relativeDir){

		String relativePath = JedisUtils.get(key+RELATIE_KEY_SUFFIX);
		if(relativePath == null){
			relativePath = JedisUtils.get(key);
		}
		if(relativePath!=null){
			String localPath = contextPath+relativePath;
			File file = new File(localPath);
			if(file.exists()){
				return relativePath;
			}
		}
		return copyServerImgPath(key,contextPath,relativeDir);
	}

			
	/**
	 * 复制图片服务器的图片到本地
	 * @param key
	 * @param contextPath
	 * @param dir
	 * @return 相对路径
	 */
	private static String copyServerImgPath(String key,String contextPath,String relativeDir) {
		String serverPath = JedisUtils.get(key+SERVER_KEY_SUFFIX);
		if(serverPath != null){
			String fileName = serverPath.split(ZimgClient.zimgUrl)[1]+IMG_SUFFIX;
			String localFilePath = contextPath+relativeDir+fileName;
			//p=0获得原始图片,没有这个参数,只能获取到压缩75%的图片
			boolean boo = downloadPicture(serverPath+"?p=0", localFilePath);
			if(boo){
				//更新redis
				JedisUtils.set(key+RELATIE_KEY_SUFFIX, relativeDir+fileName, 0);
				return relativeDir+fileName;
			}
		}
		return null;
	}

	
	/**
	 * 从zimg下载图片
	 * @param urlstr
	 * @param localFilePath
	 */
    private static boolean downloadPicture(String urlstr,String localFilePath) {
        URL url = null;
        try {
            url = new URL(urlstr);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());
            FileOutputStream fileOutputStream = new FileOutputStream(new File(localFilePath));
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int length;
            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
            return true;
        } catch (MalformedURLException e) {
        	log.error(e);
        	return false;
        } catch (IOException e) {
        	log.error(e);
        	return false;
        }
        
    }
    
    public static void main(String[] args) {
    	JedisUtils.set("name", "zsx", 0);
    	System.out.println(JedisUtils.get("name"));
	}
}
