package com.suke.czx.modules.app.dao;

import com.suke.czx.modules.app.entity.TbAppUpdate;

public interface TbAppUpdateMapper {
    int insert(TbAppUpdate record);

    int insertSelective(TbAppUpdate record);
}