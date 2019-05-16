package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.OrderAppraise;

public interface OrderAppraiseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderAppraise record);

    int insertSelective(OrderAppraise record);

    OrderAppraise selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderAppraise record);

    int updateByPrimaryKeyWithBLOBs(OrderAppraise record);

    int updateByPrimaryKey(OrderAppraise record);
}