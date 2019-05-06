package com.suke.czx.modules.cms.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 实体
 * 表名 cms_link_class
 *
 * @author william_w
 * @email 939961241@qq.com
 * @date 2018-05-24 15:56:39
 */
@Data
public class CmsLinkClassEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //ID
    private String id;
    //分类名称
    private String name;
    //操作人
    private String opby;
    //操作时间
    private Integer opat;
    //删除标记
    private Integer delflag;
}
