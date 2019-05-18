package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShopMessages implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    发送者id 系统消息 发送者为0',
    private Integer sendId;
//    接受者id
    private String receiveId;
//    消息内容
    private String msgContent;
//    存放json数据（将消息 订单 商品关联起来）',
    private String msgJson;
//    菜单类型 0:私信 1：系统通知
    private Byte messageType;
//    显示 0:未读 1：已读',
    private Byte msgStatus;

    private Date createdAt;




}