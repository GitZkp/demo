package com.suke.czx.modules.im.websocket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;
/**
 * control
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/checkcenter")
public class WebScoketController {
	
	
	@Bean//这个注解会从Spring容器拿出Bean
    public WebSocketServer infoHandler() {
 
        return new WebSocketServer();
    }
	
	@RequestMapping("/websocket/loginPage")
    public String loginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return "/order/login";
    }
	
	
	  @RequestMapping("/websocket/login")
	    public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
	        String username = request.getParameter("username");
	        System.out.println(username+"登录");
	        HttpSession session = request.getSession(false);
	        session.setAttribute("SESSION_USERNAME", username); //一般直接保存user实体
	        return "/order/send";
	    }
	 
	    @RequestMapping("/websocket/send")
	    @ResponseBody
	    public String send(HttpServletRequest request) {
	        String username = request.getParameter("username");
	        infoHandler().sendMessageToUser(username, new TextMessage("你好，测试！！！！"));
	        return null;
	    }
	 
	 
	    @RequestMapping("/websocket/broad")
	    @ResponseBody
	    public  String broad() {
	        infoHandler().sendMessageToUsers(new TextMessage("发送一条小Broad"));
	        System.out.println("群发成功");
	        return "broad";
	    }
	



	//页面请求
	@GetMapping("/socket/{cid}")
	public ModelAndView socket(@PathVariable String cid) {
		ModelAndView mav=new ModelAndView("/socket");
		mav.addObject("cid", cid);
		return mav;
	}
	/*
	 * //推送数据接口
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("/socket/push/{cid}") public ApiReturnObject
	 * pushToWeb(@PathVariable String cid,String message) { try {
	 * WebSocketServer.sendInfo(message,cid); } catch (IOException e) {
	 * e.printStackTrace(); // return ApiReturnUtil.error(cid+"#"+e.getMessage()); }
	 * return ApiReturnUtil.success(cid); }
	 */
} 
