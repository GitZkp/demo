package com.suke.czx.modules.home.dao;

import com.suke.czx.modules.home.entity.HomeMenus;

public interface HomeMenusMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HomeMenus record);

        int insertSelective(HomeMenus record);

        HomeMenus selectByPrimaryKey(Integer id);

        int updateByPrimaryKeySelective(HomeMenus record);

        int updateByPrimaryKey(HomeMenus record);
        }