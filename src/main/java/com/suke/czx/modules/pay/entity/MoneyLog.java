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
public class MoneyLog implements Serializable {
    private static final long serialVersionUID = 1L;
    //主键
    private Integer id;
//'用户类型 0：商品 1：商家
    private Byte targetType;
//'对象id',
    private Integer targetId;
//    订单id 和结算单id 提现单id
    private Integer dataId;
//    流水来源 1:交易订单 2:订单结算 3:提现申请
    private Byte dataType;
//    流水标志 1：收入 0：支出
    private Byte moneyType;
//    金额
    private BigDecimal money;
//    外部流水号'
    private String tardeNo;
//    支付方式： 0：平台 1：支付包 2 微信
    private Byte payType;
//    备注
    private String remark;

    private Date createdAt;


}