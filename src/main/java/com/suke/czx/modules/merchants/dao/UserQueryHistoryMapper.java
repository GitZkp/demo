package com.suke.czx.modules.merchants.dao;

import com.suke.czx.modules.merchants.entity.UserQueryHistory;

public interface UserQueryHistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserQueryHistory record);

    int insertSelective(UserQueryHistory record);

    UserQueryHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserQueryHistory record);

    int updateByPrimaryKey(UserQueryHistory record);
}