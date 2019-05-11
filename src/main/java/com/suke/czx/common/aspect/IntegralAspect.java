package com.suke.czx.common.aspect;

import java.lang.reflect.Method;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;
import com.suke.czx.common.annotation.Integral;
import com.suke.czx.common.annotation.SysLog;
import com.suke.czx.common.utils.HttpContextUtils;
import com.suke.czx.common.utils.IPUtils;
import com.suke.czx.modules.sys.entity.SysLogEntity;
import com.suke.czx.modules.sys.entity.SysUserEntity;
import com.sun.javadoc.RootDoc;
/**
 * 积分切面
 * @author Administrator
 *
 */
@Aspect
@Component
public class IntegralAspect {
	
	
	@Pointcut("@annotation(com.suke.czx.common.annotation.Integral)")
	public void IntegralCut() { 
		
	}
	
	@Around("IntegralCut()")
	public Object around(ProceedingJoinPoint point) throws Throwable {
		long beginTime = System.currentTimeMillis();
		//执行时长(毫秒)
		long time = System.currentTimeMillis() - beginTime;
        Object result=null;
		//保存日志
    	saveIntegral(point, time,result);

		return result;
	}
	
	private void saveIntegral(ProceedingJoinPoint joinPoint, long time, Object result) {
		MethodSignature signature = (MethodSignature) joinPoint.getSignature();
		Method method = signature.getMethod();
       
		SysLogEntity sysLog = new SysLogEntity();
		Integral integral = method.getAnnotation(Integral.class);
		if(integral != null){
			//注解上的描述
			sysLog.setOperation(integral.value());
		}

		//请求的方法名
		String className = joinPoint.getTarget().getClass().getName();
		String methodName = signature.getName();
		sysLog.setMethod(className + "." + methodName + "()");

		//请求的参数
		Object[] args = joinPoint.getArgs();
		try{
			String params = new Gson().toJson(args[0]);
			sysLog.setParams(params);
		}catch (Exception e){

		}

		//用户名
		String username = ((SysUserEntity) SecurityUtils.getSubject().getPrincipal()).getUsername();
		sysLog.setUsername(username);

		sysLog.setTime(time);
		sysLog.setCreateDate(new Date());
		try {
			result=joinPoint.proceed();
			//保存系统日志
//		IntegralService.save(sysLog);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

