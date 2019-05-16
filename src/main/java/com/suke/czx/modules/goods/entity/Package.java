package com.suke.czx.modules.goods.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;


@Data
public class Package {
    private Integer id;
//    套餐名
    private String packageName;
//    套餐专辑
    private Integer packageAlbum;
//    类型 0：商品 1：店铺 2：课程 3:服务
    private Integer packageType;
//    店铺id
    private Integer mrId;
//    每人限购
    private Integer pre;
//    商品分类编号
    private Integer categoryId;
//    商家编号
    private Integer merId;

    private Integer freightId;
//    类型编号
    private Byte typeId;
//    简述
    private String sketch;
//    商品关键字
    private String keywords;
//    标签
    private String tags;
//    商品型号
    private String marque;
//    仓库条码
    private String barcode;
//    品牌编号
    private Integer brandId;
//    虚拟购买量
    private Integer virtual;
//    商品价格
    private BigDecimal price;
//    市场价格
    private BigDecimal marketPrice;
//    可使用积分抵消
    private Integer integral;
//    库存量
    private Integer stock;
//    库存警告
    private Integer warningStock;
//    封面图
    private String pictureUrl;

    private String posters;
//    状态 -1=>下架,1=>上架,2=>预售,0=>未上架
    private Byte status;
//    审核状态 -1 审核失败 0 未审核 1 审核成功
    private Byte state;
//    是否是积分产品
    private String isIntegral;
//    排序
    private Integer sort;

    private Date createdAt;
//    是否允许退换（0：允许，1：不允许）
    private Byte isAllowExchage;
//    收藏数
    private Integer like;
//    商品描述
    private String intro;


}