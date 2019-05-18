package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductAttribute implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    商品类别编号
    private Integer categoryId;
//    属性名称
    private String name;
//    排列次序
    private Integer sort;


}