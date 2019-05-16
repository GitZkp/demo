package com.suke.czx.modules.pay.entity;

import lombok.Data;

import java.util.Date;


@Data
public class TransactionRecord {
    private Integer id;

    private String orderSn;

    private Date createdAt;

    private Date updatedAt;


}