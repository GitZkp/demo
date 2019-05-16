package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.math.BigDecimal;


@Data
public class ProductSku {
    private Integer id;
//    商品编码
    private Integer productId;
//    sku名称
    private String name;
//    主图
    private String img;
//    价格
    private BigDecimal price;
//    库存
    private Integer stock;
//    sku串
    private String data;
//    是否是赠品（0:是，1：不是）
    private Byte gift;


}