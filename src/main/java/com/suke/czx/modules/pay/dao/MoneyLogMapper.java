package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.MoneyLog;

public interface MoneyLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MoneyLog record);

    int insertSelective(MoneyLog record);

    MoneyLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MoneyLog record);

    int updateByPrimaryKey(MoneyLog record);
}