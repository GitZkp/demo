package com.suke.czx.modules.app.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TbAppUpdate implements Serializable {
    private static final long serialVersionUID = 1L;
//    APPID
    private String appid;
//    更新内容
    private String updateContent;
//    版本码
    private Integer versionCode;
//    版本号
    private String versionName;
//    URL地址
    private String url;
//    文件名
    private String appFileName;
//    MD5值
    private String md5;
//    文件大小
    private String size;
//    是否强制安装
    private String isForce;
//    是否可忽略该版本
    private String isIgnorable;
//    是否静默下载：有新版本时不提示直接下载',
    private String isSilent;
//    上传时间
    private Date uploadTime;


}