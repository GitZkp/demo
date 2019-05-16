package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ShopMessages;

public interface ShopMessagesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopMessages record);

    int insertSelective(ShopMessages record);

    ShopMessages selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopMessages record);

    int updateByPrimaryKey(ShopMessages record);
}