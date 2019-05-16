package com.suke.czx.modules.cms.dao;

import com.suke.czx.modules.cms.entity.Recommends;

public interface RecommendsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Recommends record);

    int insertSelective(Recommends record);

    Recommends selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Recommends record);

    int updateByPrimaryKey(Recommends record);
}