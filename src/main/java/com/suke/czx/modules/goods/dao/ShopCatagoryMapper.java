package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ShopCatagory;

public interface ShopCatagoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopCatagory record);

    int insertSelective(ShopCatagory record);

    ShopCatagory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopCatagory record);

    int updateByPrimaryKey(ShopCatagory record);
}