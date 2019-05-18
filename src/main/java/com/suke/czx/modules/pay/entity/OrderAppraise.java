package com.suke.czx.modules.pay.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderAppraise implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    商品编码
    private Integer productId;
//'级别 -1差评 0中评 1好评',
    private String level;
//    描述相符 1-5'
    private Byte descStar;
//    物流服务 1-5
    private Byte expressStar;
//    服务态度 1-5',
    private Byte attitudeStar;

    private Date createdAt;

    private Date updatedAt;
//    图片
    private String pic;
//    点赞
    private Integer like;
//    评论内容
    private String info;



}