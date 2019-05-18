package com.suke.czx.modules.goods.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShopApply implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    目标类型 0：商品 1：店铺 2：课程 3:服务
    private Integer targetType;
//    认证项目
    private Integer accId;
//    项目名
    private Integer accName;
//    归属id，为空则为新建
    private Integer targetId;
//    结果 0：未审核 1：审核成功 2：审核失败 ',
    private Integer result;
//    备注
    private String remark;

    private Date createdAt;
//    项目内容（文字、图片url、视频url）',
    private String accContent;


}