package com.suke.czx.common.utils;


	

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
 
/**
 * 实体类方法注解类
 * @author xgf
 *
 */
@Retention(RetentionPolicy.RUNTIME)
public @interface CustomTagMethod {
    //字段的描述注解
     String name();



}
