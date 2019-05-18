package com.suke.czx.modules.merchants.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;


@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Merchant implements Serializable {
    private static final long serialVersionUID = 1L;
    //主键
    private Integer id;
//    店铺编号
    private Integer mrSn;
//    机构法人
    private Long userId;
//    机构编号
    private Long orgId;
//    机构名
    private String orgName;
//    区域路径
    private String areaPath;
//    区域编号
    private Integer areaId;
//    是否自营
    private Byte isSelf;
//    店铺名称
    private String mrName;
//    店主
    private String mrKeeper;
//    店铺图标
    private String mrImg;
//    店铺地址
    private String mrTel;
//    店铺电话
    private String mrAddress;
//    店铺钱包
    private BigDecimal mrMoney;
//    银行
    private String bank;
//    持卡人
    private String bankKeeper;
//    银行卡开卡行
    private String bankName;
//    开卡地区
    private String bankArea;
//-2:已停止 -1:拒绝 0：未审核 1:已审核
    private Byte mrStatus;
//    状态描述
    private String statusDesc;
//    商标
    private String brand;
//    关键字
    private String keywords;
//    标签
    private String tags;
//    宣传海报
    private String pic;
//    分类编号
    private Long categoryId;

    private Date createdAt;
//    删除标记
    private Byte deleteFlag;


}