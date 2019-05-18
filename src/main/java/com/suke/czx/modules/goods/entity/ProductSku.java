package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductSku implements Serializable {
    private static final long serialVersionUID = 1L;
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