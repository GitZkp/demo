package com.suke.czx.modules.cms.entity;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 实体
 * 表名 cms_link
 *
 * @author william_w
 * @email 939961241@qq.com
 * @date 2018-05-24 15:56:39
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CmsLinkEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //ID
    private String id;
    //链接名称
    private String name;
    //链接类型
    private String type;
    //图片地址
    private String picurl;
    //链接地址
    private String url;
    //打开方式
    private String target;
    //
    private String classid;
    //操作人
    private String opby;
    //操作时间
    private Integer opat;
    //删除标记
    private Integer delflag;
}