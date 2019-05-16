package com.suke.czx.modules.cms.dao;

import com.suke.czx.modules.cms.entity.Friendlinks;

public interface FriendlinksMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Friendlinks record);

    int insertSelective(Friendlinks record);

    Friendlinks selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Friendlinks record);

    int updateByPrimaryKey(Friendlinks record);
}