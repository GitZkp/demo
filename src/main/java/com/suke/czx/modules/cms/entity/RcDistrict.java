package com.suke.czx.modules.cms.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RcDistrict implements Serializable {
    private static final long serialVersionUID = 1L;
    private Short id;
//    父及地区关系
    private Short pid;
//    地区名称
    private String district;
//    子属级别关系
    private Boolean level;


}