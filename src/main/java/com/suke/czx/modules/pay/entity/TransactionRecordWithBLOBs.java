package com.suke.czx.modules.pay.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TransactionRecordWithBLOBs extends TransactionRecord implements Serializable {
    private static final long serialVersionUID = 1L;
//    事件详情
    private String events;
//    结果详情
    private String result;


}