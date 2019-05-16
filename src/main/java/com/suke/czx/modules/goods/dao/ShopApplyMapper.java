package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ShopApply;

public interface ShopApplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopApply record);

    int insertSelective(ShopApply record);

    ShopApply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopApply record);

    int updateByPrimaryKeyWithBLOBs(ShopApply record);

    int updateByPrimaryKey(ShopApply record);
}