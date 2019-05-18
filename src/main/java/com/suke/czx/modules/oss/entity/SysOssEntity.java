package com.suke.czx.modules.oss.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;



/**
 * 文件上传
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2017-03-25 12:13:26
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysOssEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//
	private Long id;
	//URL地址
	private String url;
	//创建时间
	private Date createDate;


}
