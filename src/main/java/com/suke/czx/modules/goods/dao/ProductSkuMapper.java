package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ProductSku;

public interface ProductSkuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductSku record);

    int insertSelective(ProductSku record);

    ProductSku selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductSku record);

    int updateByPrimaryKey(ProductSku record);
}