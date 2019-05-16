package com.suke.czx.modules.home.entity;

import lombok.Data;

import java.util.Date;


@Data
public class HomeMenus {
    //主键
    private Integer id;
    //    父id
    private Integer parentId;
    //    菜单名
    private String menuName;
    //    菜单url
    private String menuUrl;
    //    菜单关联url
    private String menuOtherUrl;
    //    菜单类型 0:用户中心 1：商家中心
    private Byte menuType;
    //    显示 0:显示 1：不显示
    private Byte isShow;
    //    排序
    private Integer sort;
    //    备注
    private String remark;

    private Date createdAt;


}