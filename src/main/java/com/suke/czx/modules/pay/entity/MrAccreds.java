package com.suke.czx.modules.pay.entity;

import lombok.Data;

import java.util.Date;


@Data
public class MrAccreds {
    private Integer id;
//    认证项目名
    private String accName;
//    认证图片
    private String accImg;
//     创建日期
    private Date createdAt;
//    删除标记
    private Byte deleteFlag;
//'认证归属（0：商品 1：商铺 2：课程 3：服务）
    private Byte accType;


}