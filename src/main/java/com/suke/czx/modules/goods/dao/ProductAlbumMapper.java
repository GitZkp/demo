package com.suke.czx.modules.goods.dao;

import com.suke.czx.modules.goods.entity.ProductAlbum;

public interface ProductAlbumMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductAlbum record);

    int insertSelective(ProductAlbum record);

    ProductAlbum selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductAlbum record);

    int updateByPrimaryKey(ProductAlbum record);
}