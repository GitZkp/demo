package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ProductBrand;

public interface ProductBrandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductBrand record);

    int insertSelective(ProductBrand record);

    ProductBrand selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductBrand record);

    int updateByPrimaryKey(ProductBrand record);
}