package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.TransactionRecord;
import com.suke.czx.modules.pay.entity.TransactionRecordWithBLOBs;

public interface TransactionRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TransactionRecordWithBLOBs record);

    int insertSelective(TransactionRecordWithBLOBs record);

    TransactionRecordWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TransactionRecordWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TransactionRecordWithBLOBs record);

    int updateByPrimaryKey(TransactionRecord record);
}