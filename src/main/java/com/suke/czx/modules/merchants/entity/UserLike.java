package com.suke.czx.modules.merchants.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserLike implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    收藏类型 0：商品 1：商家
    private Byte likeType;
//    用户id
    private Integer userId;
//    对象id
    private Integer targetId;
//    商品价格（商品有，做比对  优惠价格）
    private BigDecimal targetPrice;

    private Date createdAt;


}