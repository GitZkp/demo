package com.suke.czx.modules.cms.dao;

import com.suke.czx.modules.cms.entity.RcDistrict;

public interface RcDistrictMapper {
    int deleteByPrimaryKey(Short id);

    int insert(RcDistrict record);

    int insertSelective(RcDistrict record);

    RcDistrict selectByPrimaryKey(Short id);

    int updateByPrimaryKeySelective(RcDistrict record);

    int updateByPrimaryKey(RcDistrict record);
}