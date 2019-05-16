package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.util.Date;

@Data
public class ProductCategory {
    private Integer id;
//    分类表
    private String name;
//    父分类编号
    private Integer pid;
//    封面图
    private String cover;
//    首页块级状态 1=>显示
    private Byte indexBlockStatus;
//    状态 1=>正常'
    private Byte status;
//    排序
    private Integer sort;

    private Date createdAt;

    private Date updatedAt;


}