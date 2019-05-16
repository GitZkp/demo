package com.suke.czx.modules.goods.entity;


import lombok.Data;

@Data
public class ProductAttributeValue {
    private Integer id;
//    属性值名称
    private String name;
//    属性id
    private Integer attrId;
//    排序
    private Integer sort;


}