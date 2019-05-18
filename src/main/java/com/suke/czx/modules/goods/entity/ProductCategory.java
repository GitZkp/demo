package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductCategory implements Serializable {
    private static final long serialVersionUID = 1L;
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