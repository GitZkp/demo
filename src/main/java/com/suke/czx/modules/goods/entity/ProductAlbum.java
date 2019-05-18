package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductAlbum implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    商品编号
    private Integer productId;
//    商品名称
    private String name;
//    图片地址
    private String url;
//    视频大小
    private Integer size;
//    图片介绍
    private String intro;
//    排序
    private Integer sort;
//    图片状态
    private Byte status;
//    资源类型 0=>图片 1=>视频
    private Byte state;

    private Date createdAt;

    private Date updatedAt;


}