package com.suke.czx.common.utils;




import net.sf.json.JSONObject;
 

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
 
/**
 * Created by RAZR on 2017/9/18.
 * post发送数据需要两种形式，如果接收的controller层使用实体接收，就需要进行以json格式发送，
 * 如果以单独字段进行接收，就需要进行键值对的形式发送
 */
public class ForwardRequest {
 
    private static final String DEF_CHATSET = "UTF-8";
    private static final int DEF_CONN_TIMEOUT = 60000;
    private static final int DEF_READ_TIMEOUT = 60000;
    private static String userAgent = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36";
 
    /**
     *
     * @param strUrl  访问地址路径url
     * @param params  提交的参数map集合
     * @param method  访问方式GET或者POST
     * @param token   权限验证，如果没有选择空即可
     * @return
     * @throws Exception
     */
    public static String net(String strUrl, Map params, String method,String token) throws Exception {
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        String rs = null;
        try {
            StringBuffer sb = new StringBuffer();
            if (method == null || method.equals("GET")) {
                strUrl = strUrl + "?" + urlencode(params);
            }
            URL url = new URL(strUrl);
            conn = (HttpURLConnection) url.openConnection();
            if (method == null || method.equals("GET")) {
                conn.setRequestMethod("GET");
            } else {
                conn.setDoOutput(true);
                conn.setRequestMethod("POST");
                if ("entity".equals(params.get("paramType"))) {
                    conn.setRequestProperty("Content-Type","application/json");
                } else {
                    conn.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
                }
                conn.setRequestProperty("Content-Length","content.length");
 
            }
            conn.setRequestProperty("User-agent", userAgent);
            conn.setRequestProperty("Authorization",token);
            conn.setUseCaches(false);
            conn.setConnectTimeout(DEF_CONN_TIMEOUT);
            conn.setReadTimeout(DEF_READ_TIMEOUT);
            conn.setInstanceFollowRedirects(false);
            conn.connect();
            if (params != null && method.equals("POST")) {
                try {
                    DataOutputStream out = new DataOutputStream(conn.getOutputStream());
                    if ("entity".equals(params.get("paramType"))) {
                        //如果接收参数为实体类型，就进行json转码然后发送
                        out.writeBytes(GsonTools.createGsonString(params));
                    } else {
                        //如果接收的参数为几个字段类型，就是用键值对的形式进行urlencode进行编码发送
                        out.writeBytes(urlencode(params));
                    }
                } catch (Exception e) {
                    // TODO: handle exception
                }
            }
            InputStream is = conn.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, DEF_CHATSET));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sb.append(strRead);
            }
            rs = sb.toString();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                reader.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rs;
    }
 
    //将map型转为请求参数型（get访问时使用）
    public static String urlencode(Map<String, Object> data) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry i : data.entrySet()) {
            try {
                sb.append(i.getKey()).append("=").append(URLEncoder.encode(i.getValue() + "", "UTF-8")).append("&");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
    public  static  String getPhoto64(String photoObjectInfo,String idCard){
        JSONObject object = new JSONObject();
        try {
            object=JSONObject.fromObject(photoObjectInfo);
            if(object.getInt("code")==0){
                if (object.getJSONObject("obj").getJSONObject(idCard).size()!=0) {
                    String res = object.getJSONObject("obj").getJSONObject(idCard).getString("url");
                    return res;
                }
                else return null;
        }
            else {
                return null;}
        }
        catch (Exception e) {
                e.printStackTrace();
                return null;
            }
 
        }
/*public  static void main(String[] ags) throws Exception {
    Map map = new HashMap();
    map.put("kewWord", "440301198905147219");
    map.put("tableId", "11");
 
    System.out.println(net("http://10.4.106.24:8080/relation-web/visual/getFamilyRelationList",map,"POST","Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMTAwMDAwMDAwMDE0OSIsImNyZWF0ZWQiOjE1MTAxOTUxMDk0ODIsImV4cCI6MTUxMDc5OTkwOX0.A7k7FVpbFc56RA6y_l3m3hDDmMseL6nct2jW79Q9YIrsG1CeiRV3opAw7iRVPx9JziALA4Rg9PTByN-NbU-Zeg"));
}*/
 
}

