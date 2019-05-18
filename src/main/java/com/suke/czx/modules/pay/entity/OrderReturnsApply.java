package com.suke.czx.modules.pay.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderReturnsApply implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    订单单号
    private String orderNo;
//    子订单编码
    private String orderDetailId;
//    售后单号
    private String returnNo;
//    用户编码
    private Integer memberId;
//    '类型 0 仅退款 1退货退款'
    private Byte state;
//    货物状态 0:已收到货 1:未收到货
    private Byte productStatus;
//    退换货原因
    private String why;
//    审核状态 -1 拒绝 0 未审核 1审核通过
    private Byte status;
//    审核时间
    private Integer auditTime;
//    审核原因
    private String auditWhy;

    private Date createdAt;

    private Date updatedAt;
//    备注
    private String note;


}