package com.suke.czx.modules.merchants.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserAuthorized implements Serializable {
    private static final long serialVersionUID = 1L;
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