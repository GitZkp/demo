package com.suke.czx.modules.pay.entity;


import lombok.Data;

@Data
public class TransactionRecordWithBLOBs extends TransactionRecord {
//    事件详情
    private String events;
//    结果详情
    private String result;


}