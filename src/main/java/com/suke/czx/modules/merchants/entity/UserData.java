package com.suke.czx.modules.merchants.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserData {
    private Integer id;
//    用户编码
    private Long userId;
//    性别 0=>女生 1=>男生 2=>未知',
    private String sex;
//    姓名/昵称
    private String nickName;
//    用户头像
    private String img;

    private Date createdAt;

    private Date updatedAt;


}