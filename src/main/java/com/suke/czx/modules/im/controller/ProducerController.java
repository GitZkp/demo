package com.suke.czx.modules.im.controller;

import javax.jms.Destination;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/im")
public class ProducerController {
	@Autowired
	private JmsTemplate jmsTemplate;
	private final static Logger logger = LoggerFactory.getLogger(ProducerController.class);

	public void sendMessage(Destination destination, String message) {
		this.jmsTemplate.convertAndSend(destination, message);
	}
	@RequestMapping("/sendmsg")
	public  void sendMessage(String destination, String message) {
		  logger.info("发送"+destination+"消息：{}",message);
		this.jmsTemplate.convertAndSend(destination, message);
	}

}