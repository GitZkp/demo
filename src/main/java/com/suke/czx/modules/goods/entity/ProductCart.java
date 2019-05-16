package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.util.Date;


@Data
public class ProductCart {
    private Integer id;
//    用户编码
    private Integer userId;

    private Date createdAt;

    private Date updatedAt;


}