package com.suke.czx.modules.pay.ali;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.request.AlipayTradeQueryRequest;
import com.alipay.api.request.AlipayTradeRefundRequest;

@PropertySource({"classpath:pay.yml"})
@Component
public class AliPay {
	@Value("${aligateway}")
	private String gateway;
	
	@Value("${aliappid}")
	private String app_id;
	
	@Value("${aliprivatekey}")
	private String private_key;
	
	@Value("${alipaypublickey}")
	private String alipay_public_key;
	
	private String return_url;
	private String notify_url;
	
	 /**
     * 
     * @param outTradeNo  商户订单号，商户网站订单系统中唯一订单号，必填   对应缴费记录的orderNo
     * @param totalAmount  付款金额，必填
     * @param subject 主题
     * @param body 商品描述，可空
     * @return
     */
    public  String alipay(String outTradeNo,String totalAmount,String subject,String body)  {
        //获得初始化的AlipayClient
                AlipayClient alipayClient = new DefaultAlipayClient(gateway,app_id,private_key,"json","utf-8",alipay_public_key,"RSA2");
                //设置请求参数
                AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
                alipayRequest.setReturnUrl(return_url);
                alipayRequest.setNotifyUrl(notify_url);
                try {               
                alipayRequest.setBizContent("{\"out_trade_no\":\""+ outTradeNo +"\"," 
                        + "\"total_amount\":\""+ totalAmount +"\"," 
                        + "\"subject\":\""+ subject +"\"," 
                        + "\"body\":\""+ body +"\"," 
                        + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");                                                                                                                                                               

                //请求
                String result;
                result = alipayClient.pageExecute(alipayRequest).getBody();
                System.out.println("*********************\n返回结果为："+result);
                return result;
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    return null;
                }
    }
    
    
    /**
     * 支付宝退款
     * @param outTradeNo
     * @param tradeNo
     * @param refundAmount
     * @param refundReason
     * @param out_request_no  标识一次退款请求，同一笔交易多次退款需要保证唯一，如需部分退款，则此参数必传
     * @return
     */
    
    public  String aliRefund(String outTradeNo,String tradeNo,String refundAmount,String refundReason,String out_request_no) {
        //获得初始化的AlipayClient
                AlipayClient alipayClient = new DefaultAlipayClient(gateway,app_id,private_key,"json","utf-8",alipay_public_key,"RSA2");

                //设置请求参数
                AlipayTradeRefundRequest alipayRequest = new AlipayTradeRefundRequest();
                alipayRequest.setReturnUrl(return_url);
                alipayRequest.setNotifyUrl(notify_url);
                try {               
                    alipayRequest.setBizContent("{\"out_trade_no\":\""+ outTradeNo +"\"," 
                            + "\"trade_no\":\""+ tradeNo +"\"," 
                            + "\"refund_amount\":\""+ refundAmount +"\"," 
                            + "\"refund_reason\":\""+ refundReason +"\"," 
                            + "\"out_request_no\":\""+ out_request_no +"\"}");                                                                                                                                                               

                //请求
                String result;

                //请求
                result = alipayClient.execute(alipayRequest).getBody();
                System.out.println("*********************\n返回结果为："+result);
                return result;
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    return null;
                }
    }

    /**
     * 交易查询
     * @param outTradeNo
     * @param tradeNo
     * @param refundAmount
     * @param refundReason
     * @param out_request_no
     * @return
     * 
     * 
     * 该接口提供所有支付宝支付订单的查询，商户可以通过该接口主动查询订单状态，完成下一步的业务逻辑。 需要调用查询接口的情况： 当商户后台、网络、服务器等出现异常，商户系统最终未接收到支付通知； 调用支付接口后，返回系统错误或未知交易状态情况； 调用alipay.trade.pay，返回INPROCESS的状态； 调用alipay.trade.cancel之前，需确认支付状态；
     */
    public  String aliTradeQuery(String outTradeNo,String tradeNo,String refundAmount,String refundReason,String out_request_no) {
        //获得初始化的AlipayClient
                AlipayClient alipayClient = new DefaultAlipayClient(gateway,app_id,private_key,"json","utf-8",alipay_public_key,"RSA2");

                //设置请求参数
                AlipayTradeQueryRequest alipayRequest = new AlipayTradeQueryRequest();
                alipayRequest.setReturnUrl(return_url);
                alipayRequest.setNotifyUrl(notify_url);
                try {               
                    alipayRequest.setBizContent("{\"out_trade_no\":\""+ outTradeNo +"\"," 
                            + "\"trade_no\":\""+ tradeNo +"\"}");                                                                                                                                                               

                //请求
                String result;

                //请求
                result = alipayClient.execute(alipayRequest).getBody();
                System.out.println("*********************\n返回结果为："+result);
                return result;
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    return null;
                }
    }



}
