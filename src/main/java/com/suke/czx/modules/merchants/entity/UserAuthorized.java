package com.suke.czx.modules.merchants.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserAuthorized {
    private Integer id;
//    用户编码
    private Long userId;
//    第三方名称
    private String prefix;
//    第三方标示
    private String token;

    private Date createdAt;

    private Date updatedAt;
//    授权获得的用户信息
    private String data;


}