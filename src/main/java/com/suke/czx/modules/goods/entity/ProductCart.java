package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductCart implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    用户编码
    private Integer userId;

    private Date createdAt;

    private Date updatedAt;


}