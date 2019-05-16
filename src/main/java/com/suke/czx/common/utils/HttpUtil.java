package com.suke.czx.common.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;

import net.sf.json.JSONObject;

/**
 * Created by liqun.chen on 2017/5/15.
 */
public class HttpUtil {
    /**
     * json 字符串
     * @param url
     * @param param
     * @return
     *//*
    public static String getSerchPersion(String url,String param){
       1 生成 HttpClinet 对象并设置参数 
        HttpClient httpClient = new HttpClient();
        // 设置 Http 连接超时为5秒
        httpClient.getHttpConnectionManager().getParams().setConnectionTimeout(5000);
       2 生成 GetMethod 对象并设置参数 
        GetMethod getMethod = new GetMethod(url);
        // 设置 get 请求超时为 5 秒
        getMethod.getParams().setParameter(HttpMethodParams.SO_TIMEOUT, 5000);
        // 设置请求重试处理，用的是默认的重试处理：请求三次
        getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());
        String response = "";
       3 执行 HTTP GET 请求 
        try {
            int statusCode = httpClient.executeMethod(getMethod);
          4 判断访问的状态码 
            if (statusCode != HttpStatus.SC_OK) {
                System.err.println("请求出错: "+ getMethod.getStatusLine());
            }
          5 处理 HTTP 响应内容 
            // HTTP响应头部信息，这里简单打印
            Header[] headers = getMethod.getResponseHeaders();
            for (Header h : headers)
                System.out.println(h.getName() + "------------ " + h.getValue());
            // 读取 HTTP 响应内容，这里简单打印网页内容
            byte[] responseBody = getMethod.getResponseBody();// 读取为字节数组
            response = new String(responseBody, param);
            System.out.println("----------response:" + response);
            // 读取为 InputStream，在网页内容数据量大时候推荐使用
            // InputStream response = getMethod.getResponseBodyAsStream();
        } catch (HttpException e) {
            // 发生致命的异常，可能是协议不对或者返回的内容有问题
            System.out.println("请检查输入的URL!");
            e.printStackTrace();
        } catch (IOException e) {
            // 发生网络异常
            System.out.println("发生网络异常!");
            e.printStackTrace();
        } finally {
          6 .释放连接 
            getMethod.releaseConnection();
        }
        return response;
    }
    /**
     * post请求
     * @param url
     * @param json
     * @return
     */
    public static HttpResponse doPost(String url,JSONObject json){
        DefaultHttpClient client = new DefaultHttpClient();
        HttpPost post = new HttpPost(url);
        HttpResponse response = null;
        try {
            StringEntity s = new StringEntity(json.toString());
            s.setContentEncoding("UTF-8");
            s.setContentType("application/json");//发送json数据需要设置contentType
            post.setEntity(s);
            HttpResponse res = client.execute(post);
            if(res.getStatusLine().getStatusCode() == HttpStatus.SC_OK){
                HttpEntity entity = res.getEntity();
//                String result = EntityUtils.toString(res.getEntity());// 返回json格式：
                response = (HttpResponse) entity;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return response;
    }
    
    
    
    public static String formatJson(String json) {
        StringBuilder result = new StringBuilder();
        int length = json.length();
        int number = 0;
        char key;
        // 遍历输入字符串
        for (int i = 0; i < length; i++) {
            // 一【当前字符】
            key = json.charAt(i);
            // 二【当前字符前是括号/花括号】
            if ((key == '[') || (key == '{')) {
                // （1）前仍有字符且“:”，打印换行缩进
                if ((i - 1 > 0) && (json.charAt(i - 1) == ':')) {
                    result.append('\n');
                    result.append(indent(number));
                }
                // （2）打印当前字符
                result.append(key);
                // （3）前方括号/花括号则后换行
                result.append('\n');
                // （4）每现一次前方括号/花括号，缩进次数增一
                number++;
                result.append(indent(number));
                // （5）下次循环
                continue;
            }
            // 三【当前字符后方括号/花括号】
            if ((key == ']') || (key == '}')) {
                // （1）后方括号/花括号则前换行
                result.append('\n');
                // （2）每现一次后方括号/花括号，缩进次数减一
                number--;
                result.append(indent(number));
                // （3）打印当前字符
                result.append(key);
                // （4）当前字符后还有字符且不为“,”
                if (((i + 1) < length) && (json.charAt(i + 1) != ',')) {
                    result.append('\n');
                }
                // （5）下次循环
                continue;
            }
            // 四【当前字符逗号，逗号后换行缩进，不改缩进次数】
            if ((key == ',')) {
                result.append(key);
                result.append('\n');
                result.append(indent(number));
                continue;
            }
            // 五【打印当前字符】
            result.append(key);
        }
        return result.toString();
    }

    /**
     * 返指定次数的缩进字符串（每次缩三空格，即SPACE）
     *
     * @param number 缩进次数
     * @return 指定缩进次数的字符串
     */
    private static String indent(int number) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < number; i++) {
            String space = "   ";
            result.append(space);
        }
        return result.toString();
    }
    
    
    public static File createJsonFile(String jsonString, String filePath, String fileName) {
        // 文件生成否
//        boolean flag = true;
        // 拼接文件完整路径
        String fullPath = filePath + File.separator;
        // 生JSON文件
        File file = new File(fullPath, fileName);
        try {
            // 创新文件
            if (!file.getParentFile().exists()) {
                // 父目录不存则创父目录
                file.getParentFile().mkdirs();
            }
            if (file.exists()) {
                // 已存删旧文件
                file.delete();
            }
            file.createNewFile();
            // 格式化JSON字符串
            jsonString = formatJson(jsonString);
            // 格式化后字符串写入文件
            Writer write = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
            write.write(jsonString);
            write.flush();
            write.close();
            
        } catch (Exception e) {
//            flag = false;
            e.printStackTrace();
        }
        // 返成否
        return file;
    }




}
