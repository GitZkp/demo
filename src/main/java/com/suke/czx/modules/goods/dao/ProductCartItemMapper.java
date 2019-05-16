package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ProductCartItem;

public interface ProductCartItemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductCartItem record);

    int insertSelective(ProductCartItem record);

    ProductCartItem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductCartItem record);

    int updateByPrimaryKey(ProductCartItem record);
}