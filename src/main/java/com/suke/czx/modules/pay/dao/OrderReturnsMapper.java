package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.OrderReturns;

public interface OrderReturnsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderReturns record);

    int insertSelective(OrderReturns record);

    OrderReturns selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderReturns record);

    int updateByPrimaryKeyWithBLOBs(OrderReturns record);

    int updateByPrimaryKey(OrderReturns record);
}