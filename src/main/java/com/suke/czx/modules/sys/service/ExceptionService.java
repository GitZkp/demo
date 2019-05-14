package com.suke.czx.modules.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suke.czx.modules.sys.entity.SysExceptionEntity;
import com.suke.czx.modules.sys.dao.ExceptionDao;

@Service
public class ExceptionService {
	
	@Autowired
	private ExceptionDao exceptionDao;
	
	
	public void save(SysExceptionEntity e) {
		
		
		exceptionDao.save(e);
		
	}
	

}
