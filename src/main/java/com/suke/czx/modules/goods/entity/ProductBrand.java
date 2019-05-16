package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.util.Date;


@Data
public class ProductBrand {
//    类目对应多个品牌，品牌应对应多个类目并非关联多个类目'
    private Integer id;
//    商品类别编号
    private Integer productCategoryId;
//    品牌名称
    private String name;
//    图片url
    private String imageUrl;
//    排列次序
    private Integer sort;
//    状态
    private Byte status;

    private Date createdAt;

    private Date updatedAt;


}