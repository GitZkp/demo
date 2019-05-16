package com.suke.czx.modules.merchants.dao;

import com.suke.czx.modules.merchants.entity.TbUser;

public interface TbUserMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(TbUser record);

    int insertSelective(TbUser record);

    TbUser selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(TbUser record);

    int updateByPrimaryKey(TbUser record);
}