package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.OrderAppraiseReplay;

public interface OrderAppraiseReplayMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderAppraiseReplay record);

    int insertSelective(OrderAppraiseReplay record);

    OrderAppraiseReplay selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderAppraiseReplay record);

    int updateByPrimaryKey(OrderAppraiseReplay record);
}