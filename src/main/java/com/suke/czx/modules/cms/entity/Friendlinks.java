package com.suke.czx.modules.cms.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class Friendlinks implements Serializable {
    private static final long serialVersionUID = 1L;
    //主键
    private Integer id;
    //    图标
    private String img;
    //    名称
    private String linkName;
    //    网址
    private String linkUrl;
    //    排序
    private Integer sort;
    //    备注
    private String remark;

    private Date createdAt;


}