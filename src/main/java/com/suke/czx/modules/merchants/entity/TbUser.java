package com.suke.czx.modules.merchants.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TbUser implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long userId;
//    用户名
    private String username;
//    手机号
    private String mobile;
//    密码
    private String password;
//    创建时间
    private Date createTime;


}