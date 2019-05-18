package com.suke.czx.modules.home.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class HomeMenus implements Serializable {
    private static final long serialVersionUID = 1L;
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