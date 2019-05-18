package com.suke.czx.modules.pay.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.annotation.Nonnull;
import java.io.Serializable;
import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderExpress implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    订单编码
    private Integer orderId;
//    发货快递单号
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
    private Integer zip;
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


}