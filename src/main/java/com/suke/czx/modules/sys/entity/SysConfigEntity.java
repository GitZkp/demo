package com.suke.czx.modules.sys.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotBlank;

import java.io.Serializable;

/**
 * 系统配置信息
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年12月4日 下午6:43:36
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysConfigEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	private Long id;
	@NotBlank(message="参数名不能为空")
	private String key;
	@NotBlank(message="参数值不能为空")
	private String value; //状态   0：隐藏   1：显示
	private String remark;//备注
	

}
