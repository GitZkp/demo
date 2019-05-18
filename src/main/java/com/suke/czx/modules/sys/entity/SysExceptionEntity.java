package com.suke.czx.modules.sys.entity;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 异常
 * @author Administrator
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysExceptionEntity implements Serializable {

	private static final long serialVersionUID = 1L;
	/**
	 * ID
	 */
	private Long id;
	/**
	 * 用户id
	 */
	@NotNull
	private Long uid;
	/**
	 * 用户名
	 */
	@NotNull
	private String uname;
	/**
	 * 请求路径
	 */
	private String url;
	/**
	 * 请求参数
	 */
	private String param;
	/**
	 * 异常
	 */
	private String exception;
	/**
	 * 时间
	 */
	private Date createat;

	public static SysExceptionEntity setSysException(Long uid, String uname, String url, String param, String exception,
			Date createat) {
		SysExceptionEntity entity = new SysExceptionEntity();
		entity.uid = uid;
		entity.uname = uname;
		entity.url = url;
		entity.param = param;
		entity.exception = exception;
		entity.createat = createat;
		return entity;

	}

}
