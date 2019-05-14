package com.suke.czx.common.exception;


import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.jsoup.helper.DataUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.suke.czx.common.ResultEnum;
import com.suke.czx.common.utils.AppBaseResult;
import com.suke.czx.modules.sys.entity.SysExceptionEntity;
import com.suke.czx.modules.sys.entity.SysUserEntity;
import com.suke.czx.modules.sys.service.ExceptionService;

import net.sf.json.JSONObject;
@RestControllerAdvice
public class ParamIsNullExceptionHandler {
	
	 private static final Logger LOGGER = LoggerFactory.getLogger(ParamIsNullExceptionHandler.class);
	 
	 @Autowired
	 private ExceptionService exceptionService;


	    /**
	     * 参数为空异常处理
	     *
	     * @param ex
	     * @return
	     */
	    @ExceptionHandler({MissingServletRequestParameterException.class, ParamIsNullException.class})
	    public AppBaseResult requestMissingServletRequest(Exception ex) {
	        LOGGER.error("request Exception:", ex);
	        return AppBaseResult(ResultEnum.FAIL.getCode(), ex.getMessage());
	    }

	    private AppBaseResult AppBaseResult(int code, String message) {
	    	AppBaseResult appBaseResult = new AppBaseResult();
			appBaseResult.setCode(code);
			appBaseResult.setMessage(message);
			return appBaseResult;
		}

		/**
	     * 特别说明： 可以配置指定的异常处理,这里处理所有
	     *
	     * @param request
	     * @param e
	     * @return
	     */
	    @ExceptionHandler(value = Exception.class)
	    public AppBaseResult errorHandler(HttpServletRequest request, Exception e) {
	        LOGGER.error("request Exception:", e);
	        //把exception存储下来
	        String uri=request.getRequestURI();//路径
	        HashMap<String,String> map=new HashMap<String,String>();
	        Enumeration<String> m  = request.getParameterNames();
	        while (m.hasMoreElements()) {
	         String paramName = (String) m.nextElement();

	         String paramValue = request.getParameter(paramName);

	     //形成键值对应的map
	         map.put(paramName, paramValue);

	        }
	        String param=map.toString();//请求参数
	        String username="";
	        Long uid = null;
	        if((SysUserEntity) SecurityUtils.getSubject().getPrincipal()==null) {
	        	username=request.getParameter("username");
	        }else {
	        uid=((SysUserEntity) SecurityUtils.getSubject().getPrincipal()).getUserId();//用户id
	        username = ((SysUserEntity) SecurityUtils.getSubject().getPrincipal()).getUsername();//用户名
	        }
	        String exception=e.getMessage();//异常信息
	        //时间
	        Date createat=new Date();
	        SysExceptionEntity entity=new SysExceptionEntity();
	        entity=SysExceptionEntity.setSysException(uid,username,uri,param,exception,createat);
	        exceptionService.save(entity);
	        
	        return AppBaseResult(ResultEnum.FAIL.getCode(), e.getMessage());
	    }

}
