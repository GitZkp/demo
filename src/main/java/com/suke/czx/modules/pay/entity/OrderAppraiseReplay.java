package com.suke.czx.modules.pay.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderAppraiseReplay implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    用户编码
    private Long userId;
//    商品编码
    private Long productId;
//    评论贴编码
    private Long appraiseId;
//    内容
    private String content;

    private Date createdAt;

    private Date updatedAt;
//    点赞
    private Integer like;


}