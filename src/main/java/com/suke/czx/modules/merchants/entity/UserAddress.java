package com.suke.czx.modules.merchants.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserAddress {
    private Integer id;
//    用户id
    private Integer uid;
//    收货人姓名
    private String realname;
//    联系电话
    private String telphone;
//    备用联系电话
    private String telphone2;
//    国家
    private String country;
//    省份
    private String province;
//    地区
    private String area;
//    街道详细地址
    private String street;
//    收货地址
    private String address;
//    邮政编码
    private Integer zip;
//    默认
    private Integer defaults;
//    创建时间
    private Date createAt;
//    结束时间
    private Date updateAt;


}