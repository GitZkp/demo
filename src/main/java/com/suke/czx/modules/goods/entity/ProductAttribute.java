package com.suke.czx.modules.goods.entity;

import lombok.Data;

@Data
public class ProductAttribute {
    private Integer id;
//    商品类别编号
    private Integer categoryId;
//    属性名称
    private String name;
//    排列次序
    private Integer sort;


}