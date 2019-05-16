package com.suke.czx.modules.pay.entity;

import lombok.Data;

import java.util.Date;


@Data
public class MrCashConfig {
    private Integer id;
//    '提现对象 0：用户 1：商家',
    private Byte targetType;
//    对象id
    private Integer targetId;
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

    private Date createdAt;
//    删除标记
    private Byte deleteFlag;
//    '默认  0：默认，1：备选
    private Byte isDefault;




}