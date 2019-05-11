package com.suke.czx.common.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.ElementType;

/**
 * 参数非空注解
 * @author Administrator
 *
 */
@Target(ElementType.PARAMETER)
@Retention(RetentionPolicy.RUNTIME)
public @interface ParamNotNull {
    /**
     * 是否非空,默认不能为空
     */
    boolean notNull() default true;
}