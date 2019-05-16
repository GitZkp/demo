package com.suke.czx.modules.merchants.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class UserLike {
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