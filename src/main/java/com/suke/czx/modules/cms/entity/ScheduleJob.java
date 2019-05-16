package com.suke.czx.modules.cms.entity;

import lombok.Data;

import java.util.Date;

@Data
public class ScheduleJob {
//    任务id
    private Long jobId;
//    spring bean名称'
    private String beanName;
//    方法名
    private String methodName;
//    参数
    private String params;
//    'cron表达式',
    private String cronExpression;
//    任务状态  0：正常  1：暂停
    private Byte status;
//    备注
    private String remark;
//    创建时间
    private Date createTime;


}