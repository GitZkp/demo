package com.suke.czx.modules.cms.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;


/**
 * 实体
 * 表名 cms_article
 *
 * @author william_w
 * @email 939961241@qq.com
 * @date 2018-05-24 15:56:39
 */
@Data
public class CmsArticleEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //ID
    private String id;
    //预留商城ID
    private String shopid;
    //文章标题
    private String title;
    //文章简介
    private String info;
    //文章作者
    private String author;
    //标题图
    private String picurl;
    //文章内容
    private String content;
    //是否禁用
    private Integer disabled;
    //发布时间
    private Integer publishat;
    //排序字段
    private Integer location;
    //
    private String channelid;
    //操作人
    private String opby;
    //操作时间
    private Integer opat;
    //删除标记
    private Integer delflag;
}

