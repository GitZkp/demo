package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.MrCashRecord;

public interface MrCashRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MrCashRecord record);

    int insertSelective(MrCashRecord record);

    MrCashRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MrCashRecord record);

    int updateByPrimaryKey(MrCashRecord record);
}