package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.util.Date;


@Data
public class ShopCatagory {
    private Integer id;
//    套餐名
    private String catagoryName;
//    父级id（顶级为0）'
    private Integer parentId;

    private Date createdAt;


}