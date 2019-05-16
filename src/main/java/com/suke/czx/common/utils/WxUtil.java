package com.suke.czx.common.utils;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageOutputStream;

import net.sf.json.JSONObject;

import org.apache.commons.codec.binary.Base64;
import org.apache.http.HttpResponse;
import org.springframework.expression.ParseException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.github.kevinsawicki.http.HttpRequest;

import lombok.extern.log4j.Log4j;

import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;

@Log4j
public class WxUtil {

	static String appid = "wx70dfa9daa6263231";
	static String secret = "b845bfedbccfdeb4b30d801a28b92654";

	public static String getopendid(String jsCode) throws ParseException, IOException {

		String appid = "wx70dfa9daa6263231";
		String secret = "b845bfedbccfdeb4b30d801a28b92654";

		String url = "https://api.weixin.qq.com/sns/jscode2session?grant_type=authorization_code&appid=wx70dfa9daa6263231&secret=b845bfedbccfdeb4b30d801a28b92654&js_code="
				+ jsCode;
		String get = SendGET(url, "");
		JSONObject jsonTexts = (JSONObject) JSONObject.fromObject(get);
		String openid = "";
		if (jsonTexts.get("openid") != null) {
			openid = jsonTexts.get("openid").toString();
		}
		return openid;
	}

	/**
	 * getAccessToken
	 */
	public static JSONObject getAccessToken() throws ParseException, IOException {

		String url = " https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + appid + "&secret="
				+ secret;
		String get = SendGET(url, "");
		JSONObject jsonTexts = (JSONObject) JSONObject.fromObject(get);

		return jsonTexts;

	}

	public static void convert(String source, String formatName, String result) {
		try {
			File f = new File(source);
			f.canRead();
			BufferedImage src = ImageIO.read(f);
			ImageIO.write(src, formatName, new File(result));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * 
	 */
	public static String getWXACodeUnlimit(String path, String pathWx, Number width, String scene, Boolean auto_color)
			throws ParseException, IOException {
		JSONObject jsonTexts = getAccessToken();
		String access_token = "";
		String expires_in = "";
		String dir = UUID.randomUUID().toString() + ".png";

		if (jsonTexts.get("access_token") != null) {
			access_token = jsonTexts.get("access_token").toString();
		}

		if (jsonTexts.get("expires_in") != null) {
			expires_in = jsonTexts.get("expires_in").toString();
		}
		String url = "https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token=" + access_token;
		Map<String, Integer> colorMap = new HashMap<String, Integer>();
		RestTemplate rest = new RestTemplate();
		InputStream inputStream = null;
		OutputStream outputStream = null;
		String pathE = "";
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("path", pathWx);
			param.put("width", width);
			param.put("scene", scene);
			// param.put("line_color", "{"r:"236","g":"136","b":"185"}');
			param.put("auto_color", auto_color);
			// LOG.info("调用生成微信URL接口传参:" + param);
			JSONObject paramJ = JSONObject.fromObject(param);
			MultiValueMap<String, String> headers = new LinkedMultiValueMap<String, String>();
			// headers.("content-type", "application/json");
			HttpEntity requestEntity = new HttpEntity(paramJ, headers);
			ResponseEntity<byte[]> entity = rest.exchange(url, HttpMethod.POST, requestEntity, byte[].class,
					new Object[0]);
			// LOG.info("调用小程序生成微信永久二维码URL接口返回结果:" + entity.getBody());
			byte[] result = entity.getBody();
			inputStream = new ByteArrayInputStream(result);
			pathE = path + dir;
			File file = new File(pathE);
			if (!file.exists()) {
				file.createNewFile();
			}
			outputStream = new FileOutputStream(file);
			int len = 0;
			byte[] buf = new byte[1024];
			while ((len = inputStream.read(buf, 0, 1024)) != -1) {
				outputStream.write(buf, 0, len);
			}
			outputStream.flush();

		} catch (Exception e) {
			 log.error("调用小程序生成微信永久二维码URL接口异常",e);
		} finally {
			if (inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (outputStream != null) {
				try {
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		// schedule(pathE);

		return dir;
	}

	// 定时三个月删除二维码
	public static void schedule(final String path) {

		final ScheduledExecutorService service = Executors.newSingleThreadScheduledExecutor();
		// System.out.print("执行了吗");
		service.schedule(new Job() {
			public void run() {
				// final String tarImgPath="D:/2.jpg"; //待存储的地址
				File file = new File(path);
				// System.out.print("删除了吗");
				if (file.exists() && file.isFile()) {
					file.delete();
					// System.out.println("删除成功");
				}

			}

		}, 3 * 30 * 24 * 60 * 60 * 1000, TimeUnit.MILLISECONDS);

	}

	public static String SendGET(String url, String param) {
		String result = "";// 访问返回结果
		BufferedReader read = null;// 读取访问结果

		try {
			// 创建url
			URL realurl = new URL(url + param);
			// 打开连接
			URLConnection connection = realurl.openConnection();
			// 设置通用的请求属性
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			// 建立连接
			connection.connect();
			// 获取所有响应头字段
			Map<String, List<String>> map = connection.getHeaderFields();
			// 遍历所有的响应头字段，获取到cookies等
			for (String key : map.keySet()) {
				// System.out.println(key + "--->" + map.get(key));
			}
			// 定义 BufferedReader输入流来读取URL的响应
			read = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
			String line;// 循环读取
			while ((line = read.readLine()) != null) {
				result += line;
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (read != null) {// 关闭流
				try {
					read.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	/**
	 * 向指定 URL 发送POST方法的请求
	 *
	 * @param url
	 *            发送请求的 URL
	 * @return 所代表远程资源的响应结果
	 */
	public static String sendPost(String url, Map<String, ?> paramMap) {
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";

		String param = "";
		Iterator<String> it = paramMap.keySet().iterator();

		while (it.hasNext()) {
			String key = it.next();
			param += key + "=" + paramMap.get(key) + "&";
		}

		try {
			URL realUrl = new URL(url);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("Accept-Charset", "utf-8");
			conn.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 获取URLConnection对象对应的输出流
			out = new PrintWriter(conn.getOutputStream());
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			// log.error(e.getMessage(), e);
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (out != null) {
					out.close();
				}
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return result;
	}

}
