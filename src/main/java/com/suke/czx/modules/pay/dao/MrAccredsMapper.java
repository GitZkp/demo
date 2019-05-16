package com.suke.czx.modules.pay.dao;

import com.suke.czx.modules.pay.entity.MrAccreds;

public interface MrAccredsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MrAccreds record);

    int insertSelective(MrAccreds record);

    MrAccreds selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MrAccreds record);

    int updateByPrimaryKey(MrAccreds record);
}