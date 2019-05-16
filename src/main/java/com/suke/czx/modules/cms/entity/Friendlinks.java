package com.suke.czx.modules.cms.entity;

import lombok.Data;

import java.util.Date;


@Data
public class Friendlinks {
    //主键
    private Integer id;
    //    图标
    private String img;
    //    名称
    private String linkName;
    //    网址
    private String linkUrl;
    //    排序
    private Integer sort;
    //    备注
    private String remark;

    private Date createdAt;


}