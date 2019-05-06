package com.suke.czx.modules.sys.entity;

import java.io.Serializable;

import lombok.Data;
/**
 * 角色部门关系
 * @author Administrator
 *
 */
@Data
public class SysRoleDeptEntity implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private Long id;

    /**
     * 角色ID
     */
    private Long roleId;

    /**
     * 部门ID
     */
    private Long deptId;

}
