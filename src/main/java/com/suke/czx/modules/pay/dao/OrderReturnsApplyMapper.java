package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.OrderReturnsApply;

public interface OrderReturnsApplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderReturnsApply record);

    int insertSelective(OrderReturnsApply record);

    OrderReturnsApply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderReturnsApply record);

    int updateByPrimaryKeyWithBLOBs(OrderReturnsApply record);

    int updateByPrimaryKey(OrderReturnsApply record);
}