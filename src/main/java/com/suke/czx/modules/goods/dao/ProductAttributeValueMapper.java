package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ProductAttributeValue;

public interface ProductAttributeValueMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductAttributeValue record);

    int insertSelective(ProductAttributeValue record);

    ProductAttributeValue selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductAttributeValue record);

    int updateByPrimaryKey(ProductAttributeValue record);
}