package com.suke.czx.modules.pay.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class MrCashRecord {
    private Integer id;
//'提现对象 0：用户 1：商家
    private Byte targetType;
//    对象id
    private Integer targetId;
//    提现金额
    private BigDecimal cashMoney;
//    提现类型 1：银行卡 2：微信 3：支付宝'
    private Byte accType;
//    银行卡号
    private String bankNo;
//    持卡人
    private String accUser;
//    开卡地区
    private String bankArea;
//    开卡行
    private String bankName;
//    提现状态 -1:提现失败 0:待处理 1:提现成功
    private Byte cashStatus;
//    提现备注
    private String cashRemarks;
//    提现设置对应的id
    private Integer cashConfigId;
//    提现单号
    private String cashNo;
//    提现日期
    private Date createdAt;



 }