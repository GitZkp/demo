package com.suke.czx.modules.cms.entity;

import lombok.Data;

@Data
public class RcDistrict {
    private Short id;
//    父及地区关系
    private Short pid;
//    地区名称
    private String district;
//    子属级别关系
    private Boolean level;


}