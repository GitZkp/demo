package com.suke.czx.modules.cms.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 实体
 * 表名 cms_class_link
 *
 * @author william_w
 * @email 939961241@qq.com
 * @date 2018-05-24 15:56:39
 */
@Data
public class CmsClassLinkEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private String classid;
    //
    private String linkid;

}