package com.suke.czx.modules.sys.dao;

import org.apache.ibatis.annotations.Mapper;

import com.suke.czx.modules.sys.entity.SysExceptionEntity;
@Mapper
public interface ExceptionDao {

	 void  save(SysExceptionEntity e);
	
}
