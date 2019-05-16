package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.OrderExpress;

public interface OrderExpressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderExpress record);

    int insertSelective(OrderExpress record);

    OrderExpress selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderExpress record);

    int updateByPrimaryKey(OrderExpress record);
}