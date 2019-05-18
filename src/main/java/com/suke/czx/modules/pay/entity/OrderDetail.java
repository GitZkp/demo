package com.suke.czx.modules.pay.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    订单编码
    private Integer orderId;
//    商品编码
    private Integer productId;
//    商品名称
    private String productName;
//    商品价格
    private BigDecimal productPrice;
//    商品SKU
    private Integer productSku;

    private String productPictureUrl;
//    商品型号信息
    private String productModeDesc;
//    商品型号参数
    private Integer productModeParams;
//    折扣比例
    private Byte discountRate;
    //    折扣总额
    private BigDecimal discountAmount;
    //    购买数量
    private Integer number;
//    小计金额
    private BigDecimal subtotal;
//    商品是否有效 1失效
    private String isProductExists;

    private Date createdAt;

    private Date updatedAt;
//    客户商品备注
    private String remark;


}