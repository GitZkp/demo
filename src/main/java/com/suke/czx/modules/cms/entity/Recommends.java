package com.suke.czx.modules.cms.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Recommends {
    private Integer id;
//    目标类型 0：商品 1：店铺 2：课程 4:服务'
    private Integer targetType;
//    目标主键
    private Integer targetId;
//    操作人id
    private Integer userId;
//    排序
    private Integer sort;
//    备注
    private String remark;

    private Date createdAt;


}