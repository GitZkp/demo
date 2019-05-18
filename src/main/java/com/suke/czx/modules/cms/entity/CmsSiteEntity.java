package com.suke.czx.modules.cms.entity;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 实体
 * 表名 cms_site
 *
 * @author william_w
 * @email 939961241@qq.com
 * @date 2018-05-24 15:56:38
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CmsSiteEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //ID
    private String id;
    //预留商城ID
    private String shopid;
    //名称
    private String siteName;
    //域名
    private String siteDomain;
    //ICP
    private String siteIcp;
    //LOGO
    private String siteLogo;
    //WAPLOGO
    private String siteWapLogo;
    //客服QQ
    private String siteQq;
    //邮箱
    private String siteEmail;
    //电话
    private String siteTel;
    //微博
    private String weiboName;
    //微博地址
    private String weiboUrl;
    //微博二维码
    private String weiboQrcode;
    //微信名称
    private String wechatName;
    //微信ID
    private String wechatId;
    //微信二维码
    private String wechatQrcode;
    //关键词
    private String seoKeywords;
    //描述
    private String seoDescription;
    //底部版权
    private String footerContent;
    //操作人
    private String opby;
    //操作时间
    private Integer opat;
    //删除标记
    private Integer delflag;
}