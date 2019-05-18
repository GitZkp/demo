package com.suke.czx.modules.goods.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductAttributeValue implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    属性值名称
    private String name;
//    属性id
    private Integer attrId;
//    排序
    private Integer sort;


}