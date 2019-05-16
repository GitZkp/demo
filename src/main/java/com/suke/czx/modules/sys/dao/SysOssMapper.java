package com.suke.czx.modules.sys.dao;

import com.suke.czx.modules.sys.entity.SysOss;

public interface SysOssMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SysOss record);

    int insertSelective(SysOss record);

    SysOss selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SysOss record);

    int updateByPrimaryKey(SysOss record);
}