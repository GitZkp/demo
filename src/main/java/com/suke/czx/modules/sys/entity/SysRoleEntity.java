package com.suke.czx.modules.sys.entity;


import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotBlank;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * 角色
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:27:38
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysRoleEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 角色ID
	 */
	private Long roleId;

	/**
	 * 角色名称
	 */
	@NotBlank(message="角色名称不能为空")
	private String roleName;

	/**
	 * 备注
	 */
	private String remark;
	
	/**
	 * 创建者ID
	 */
	private Long createUserId;
	
	private List<Long> menuIdList;
	
	/**
	 * 创建时间
	 */
	private Date createTime;
	
	
	/**
     * 部门ID
     */
    private Long deptId;
    /**
     * 部门名称
     */
    private String deptName;

    private List<Long> deptIdList;

	
}
