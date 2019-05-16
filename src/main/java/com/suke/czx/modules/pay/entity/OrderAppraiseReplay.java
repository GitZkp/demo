package com.suke.czx.modules.pay.entity;

import lombok.Data;

import java.util.Date;

@Data
public class OrderAppraiseReplay {
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