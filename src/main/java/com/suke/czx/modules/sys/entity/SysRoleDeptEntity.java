package com.suke.czx.modules.sys.entity;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 角色部门关系
 * @author Administrator
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
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
