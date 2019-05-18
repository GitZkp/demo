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
public class Transaction implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    交易单号
    private String orderSn;
//    交易的用户ID
    private Long memberId;
//    交易金额
    private BigDecimal amount;
//    使用的积分
    private Integer integral;
//    付类型 0:余额 1:微信 2:支付宝 3:xxx',
    private Byte payState;
//    支付来源 wx app web wap',
    private String source;
//    支付状态 -1：取消 0 未完成 1已完成 -2:异常',
    private Byte status;
//    '交易完成时间',
    private Integer completionTime;
//    备注
    private String note;

    private Date createdAt;

    private Date updatedAt;


}