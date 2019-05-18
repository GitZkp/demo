package com.suke.czx.modules.sys.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


/**
 * 系统日志
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2017-03-08 10:40:56
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysLogEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	//用户名
	private String username;
	//用户操作
	private String operation;
	//请求方法
	private String method;
	//请求参数
	private String params;
	//请求结果
	private String result;
	//执行时长(毫秒)
	private Long time;
	//IP地址
	private String ip;
	//创建时间
	private Date createDate;


}
