package com.suke.czx.modules.cms.entity;

import java.io.Serializable;

import lombok.Data;

/**
 * 实体
 * 表名 cms_channel
 *
 * @author william_w
 * @email 939961241@qq.com
 * @date 2018-05-24 15:56:39
 */
@Data
public class CmsChannelEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //ID
    private String id;
    //预留商城ID
    private String shopid;
    //父级ID
    private String parentid;
    //树路径
    private String path;
    //栏目名称
    private String name;
    //栏目类型
    private String type;
    //链接地址
    private String url;
    //打开方式
    private String target;
    //是否显示
    private Integer isshow;
    //是否禁用
    private Integer disabled;
    //排序字段
    private Integer location;
    //有子节点
    private Integer haschildren;
    //操作人
    private String opby;
    //操作时间
    private Integer opat;
    //删除标记
    private Integer delflag;
}