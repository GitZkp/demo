package com.suke.czx.modules.merchants.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserQueryHistory implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    用户编码
    private Integer userId;
//    关键字
    private String keyword;

    private Date createdAt;

    private Date updatedAt;


}