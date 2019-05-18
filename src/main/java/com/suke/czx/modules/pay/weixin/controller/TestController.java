package com.suke.czx.modules.pay.weixin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.suke.czx.modules.pay.ali.AliPay;

@RestController
@RequestMapping("/task")
public class TestController {

	@Autowired
	private AliPay alipay;
	
	  @RequestMapping(value = { "/", "" })
	    public String alipayc() {
		  return alipay.alipay("20150320010101001","88.88","Iphone6","Iphone6");
	    }


}
