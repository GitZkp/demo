package com.suke.czx.modules.merchants.dao;

import com.suke.czx.modules.merchants.entity.UserAuthorized;

public interface UserAuthorizedMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserAuthorized record);

    int insertSelective(UserAuthorized record);

    UserAuthorized selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserAuthorized record);

    int updateByPrimaryKeyWithBLOBs(UserAuthorized record);

    int updateByPrimaryKey(UserAuthorized record);
}