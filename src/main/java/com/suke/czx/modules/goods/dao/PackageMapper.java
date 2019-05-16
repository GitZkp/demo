package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.Package;

public interface PackageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Package record);

    int insertSelective(Package record);

    Package selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Package record);

    int updateByPrimaryKeyWithBLOBs(Package record);

    int updateByPrimaryKey(Package record);
}