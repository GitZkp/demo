package com.suke.czx.modules.merchants.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserQueryHistory {
    private Integer id;
//    用户编码
    private Integer userId;
//    关键字
    private String keyword;

    private Date createdAt;

    private Date updatedAt;


}