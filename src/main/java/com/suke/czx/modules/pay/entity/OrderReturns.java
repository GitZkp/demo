package com.suke.czx.modules.pay.entity;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class OrderReturns {
    private Integer id;
//    退货编号 供客户查询
    private String returnsNo;
//    订单编号
    private Integer orderId;
//    物流单号
    private String expressNo;
//    收货人姓名
    private String realname;
//    联系电话
    private String telphone;
//    备用联系电话
    private String telphone2;
//    收货地址
    private String address;
//    邮政编码
    private String zip;
//    物流方式
    private String expressType;
//    物流发货运费
    private BigDecimal expressFee;
//    物流状态
    private Integer orderExpressStatus;
//    物流结算状态
    private Integer expressSettlementStatus;
//    物流最后状态描述
    private String expressResultLast;
//    物流描述
    private String expressResult;
//    发货时间
    private Integer expressCreateTime;
//    物流更新时间
    private Integer expressUpdateTime;
//    物流结算时间
    private Integer expressSettlementTime;
//0全部退单 1部分退单
    private Byte returnsType;
//'PUPAWAY:退货入库;REDELIVERY:重新发货;RECLAIM-REDELIVERY:不要求归还并重新发货; REFUND:退款; COMPENSATION:不退货并赔偿',
    private String handlingWay;
//    退款金额
    private BigDecimal returnsAmount;
//    退货申请时间
    private Integer returnSubmitTime;
//    退货处理时间
    private Integer handlingTime;
//    退货原因
    private String remark;


}