package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;


@Data
public class ProductCartItem {
    private Integer id;
//    购物车编码
    private Integer cartId;
//    商品sku信息
    private String productDesc;
//    商品快照
    private String productImg;
//    商品名称
    private String productName;
//    价格
    private BigDecimal price;
//    商品编码
    private Integer productId;
//    店铺编码
    private Integer supplierId;
//    商品sku编码
    private Integer skuId;
//    商品数量
    private Integer number;

    private Date createdAt;

    private Date updatedAt;


}