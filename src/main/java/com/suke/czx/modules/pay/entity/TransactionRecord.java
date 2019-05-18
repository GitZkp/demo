package com.suke.czx.modules.pay.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class TransactionRecord implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;

    private String orderSn;

    private Date createdAt;

    private Date updatedAt;


}