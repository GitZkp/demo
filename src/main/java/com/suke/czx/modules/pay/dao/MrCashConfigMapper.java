package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.MrCashConfig;

public interface MrCashConfigMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MrCashConfig record);

    int insertSelective(MrCashConfig record);

    MrCashConfig selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MrCashConfig record);

    int updateByPrimaryKey(MrCashConfig record);
}