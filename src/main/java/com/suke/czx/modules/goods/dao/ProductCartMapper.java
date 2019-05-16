package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ProductCart;

public interface ProductCartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductCart record);

    int insertSelective(ProductCart record);

    ProductCart selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductCart record);

    int updateByPrimaryKey(ProductCart record);
}