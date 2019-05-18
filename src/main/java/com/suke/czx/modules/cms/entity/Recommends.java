package com.suke.czx.modules.cms.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Recommends implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
//    目标类型 0：商品 1：店铺 2：课程 4:服务'
    private Integer targetType;
//    目标主键
    private Integer targetId;
//    操作人id
    private Integer userId;
//    排序
    private Integer sort;
//    备注
    private String remark;

    private Date createdAt;


}