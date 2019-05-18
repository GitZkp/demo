package com.suke.czx.modules.merchants.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserData implements Serializable {
    private static final long serialVersionUID = 1L;
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