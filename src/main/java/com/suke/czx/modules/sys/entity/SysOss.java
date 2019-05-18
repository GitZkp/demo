package com.suke.czx.modules.sys.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysOss implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long id;
//    URL地址
    private String url;
//    创建时间
    private Date createDate;


}