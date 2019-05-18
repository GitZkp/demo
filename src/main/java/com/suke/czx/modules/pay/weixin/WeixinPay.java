package com.suke.czx.modules.pay.weixin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import com.github.wxpay.sdk.WXPayUtil;
import com.suke.czx.common.utils.HttpClient;

@Component
@PropertySource({"classpath:pay.yml"})
public class WeixinPay {
	
	@Value("${wxappid}")
	private String appid;
	
	@Value("${wxpartner}")
	private String partner;
	
	@Value("${wxpartnerkey}")
	private String partnerkey;
	/**
	 * 下单
	 * @param body
	 * @param out_trade_no
	 * @param total_fee
	 * @param ip
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map unifiedorder(String body,String out_trade_no, String total_fee,String ip) {
		//1.参数封装
		Map param=new HashMap();
		param.put("appid", appid);//公众账号ID
		param.put("mch_id", partner);//商户
		param.put("nonce_str", WXPayUtil.generateNonceStr());//随机字符串
		param.put("body", body);
		param.put("device_info", "WEB");//终端设备号
		param.put("out_trade_no", out_trade_no);//交易订单号 日期加随机六位数
		param.put("total_fee", total_fee);//金额（分）
		param.put("spbill_create_ip", ip);//终端ip
		param.put("notify_url", "http://www.baidu.com");//接收微信支付异步通知回调地址,跳转地址，不能有参数
		param.put("trade_type", "NATIVE");//交易类型  原生扫码
			
		try {
			String xmlParam = WXPayUtil.generateSignedXml(param, partnerkey);//签名已经加进去了
			System.out.println("请求的参数："+xmlParam);
			
			//2.发送请求
			HttpClient httpClient=new HttpClient("https://api.mch.weixin.qq.com/pay/unifiedorder");
			httpClient.setHttps(true);
			httpClient.setXmlParam(xmlParam);
			httpClient.post();



			//3.获取结果
			String xmlResult = httpClient.getContent();

			Map<String, String> mapResult = WXPayUtil.xmlToMap(xmlResult);
			System.out.println("微信返回结果"+mapResult);
			Map map=new HashMap<>();
			map.put("code_url", mapResult.get("code_url"));//生成支付二维码的链接
			map.put("out_trade_no", out_trade_no);//订单号
			map.put("total_fee", total_fee);//总金额
			
			return map;
			
		} catch (Exception e) {
			//
			e.printStackTrace();
			return new HashMap();
		}
		
	}
	/**
	 * 查询订单
	 * @param out_trade_no
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map orderquery(String out_trade_no) {
		//1.封装参数
		Map param=new HashMap();
		param.put("appid", appid);//公众账号ID
		param.put("mch_id", partner);//商户号
		param.put("out_trade_no", out_trade_no);//订单号
		param.put("nonce_str", WXPayUtil.generateNonceStr());//随机字符串
		try {
			String xmlParam = WXPayUtil.generateSignedXml(param, partnerkey);
			//2.发送请求
			HttpClient httpClient=new HttpClient("https://api.mch.weixin.qq.com/pay/orderquery");
			httpClient.setHttps(true);
			httpClient.setXmlParam(xmlParam);
			httpClient.post();
			
			//3.获取结果
			String xmlResult = httpClient.getContent();
			Map<String, String> map = WXPayUtil.xmlToMap(xmlResult);
			System.out.println("调动查询API返回结果："+xmlResult);
			
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	/**
	 * 订单失败  超时 关闭订单  时间间隔  5分钟
	 * @param out_trade_no
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map closeorder(String out_trade_no) {
		//1.封装参数
		Map param=new HashMap();
		param.put("appid", appid);//公众账号ID
		param.put("mch_id", partner);//商户号
		param.put("out_trade_no", out_trade_no);//订单号
		param.put("nonce_str", WXPayUtil.generateNonceStr());//随机字符串
		try {
			String xmlParam = WXPayUtil.generateSignedXml(param, partnerkey);
			//2.发送请求
			HttpClient httpClient=new HttpClient("https://api.mch.weixin.qq.com/pay/closeorder");
			httpClient.setHttps(true);
			httpClient.setXmlParam(xmlParam);
			httpClient.post();
			
			//3.获取结果
			String xmlResult = httpClient.getContent();
			Map<String, String> map = WXPayUtil.xmlToMap(xmlResult);
			System.out.println("调动查询API返回结果："+xmlResult);
			
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	/**
	 * 1、交易时间超过一年的订单无法提交退款；

2、微信支付退款支持单笔交易分多次退款，多次退款需要提交原支付订单的商户订单号和设置不同的退款单号。申请退款总金额不能超过订单金额。 一笔退款失败后重新提交，请不要更换退款单号，请使用原商户退款单号。

3、请求频率限制：150qps，即每秒钟正常的申请退款请求次数不超过150次

    错误或无效请求频率限制：6qps，即每秒钟异常或错误的退款申请请求不超过6次

4、每个支付订单的部分退款次数不能超过50次
需要证书
	 * @param out_trade_no
	 * @param out_refund_no
	 * @param total_fee
	 * @param refund_fee
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map refund(String out_trade_no,String out_refund_no,int total_fee,int refund_fee) {
		//1.封装参数
		Map param=new HashMap();
		param.put("appid", appid);//公众账号ID
		param.put("mch_id", partner);//商户号
		param.put("out_trade_no", out_trade_no);//订单号
		param.put("out_refund_no", out_refund_no);//退款单号
		param.put("total_fee", total_fee);//订单价
		param.put("refund_fee", refund_fee);//退价
		param.put("nonce_str", WXPayUtil.generateNonceStr());//随机字符串
		try {
			String xmlParam = WXPayUtil.generateSignedXml(param, partnerkey);
			//2.发送请求
			HttpClient httpClient=new HttpClient("https://api.mch.weixin.qq.com/secapi/pay/refund");
			httpClient.setHttps(true);
			httpClient.setXmlParam(xmlParam);
			httpClient.post();
			
			//3.获取结果
			String xmlResult = httpClient.getContent();
			Map<String, String> map = WXPayUtil.xmlToMap(xmlResult);
			System.out.println("调动查询API返回结果："+xmlResult);
			
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	/**
	 * 
	 * 退款需要证书
	 * KeyStore keyStore  = KeyStore.getInstance("PKCS12");
ClassPathResource cl = new ClassPathResource("apiclient_cert.p12");
try {
        keyStore.load(cl.getInputStream(), mchId.toCharArray());
    } finally {
 
}
	 */
	
	/**
	 * 查询退款
	 * @param out_trade_no
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Map refundquery(String out_trade_no) {
		//1.封装参数
		Map param=new HashMap();
		param.put("appid", appid);//公众账号ID
		param.put("mch_id", partner);//商户号
		param.put("out_trade_no", out_trade_no);//订单号
		param.put("nonce_str", WXPayUtil.generateNonceStr());//随机字符串
		try {
			String xmlParam = WXPayUtil.generateSignedXml(param, partnerkey);
			//2.发送请求
			HttpClient httpClient=new HttpClient("https://api.mch.weixin.qq.com/pay/refundquery");
			httpClient.setHttps(true);
			httpClient.setXmlParam(xmlParam);
			httpClient.post();
			
			//3.获取结果
			String xmlResult = httpClient.getContent();
			Map<String, String> map = WXPayUtil.xmlToMap(xmlResult);
			System.out.println("调动查询API返回结果："+xmlResult);
			
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	@SuppressWarnings({  "rawtypes" })
	public void main(String args[]) {
		Map map=unifiedorder("daxigua","12","100","127.0.0.1");
		System.out.print(map.toString());
	}



}
