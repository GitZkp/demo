package com.suke.czx.modules.cms.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScheduleJobLog implements Serializable {
    private static final long serialVersionUID = 1L;
//    任务日志id
    private Long logId;
//    任务id
    private Long jobId;
//    spring bean名称
    private String beanName;
//    方法名
    private String methodName;
//    参数
    private String params;
//    任务状态    0：成功    1：失败'
    private Byte status;
//    失败信息',
    private String error;
//    耗时(单位：毫秒)',
    private Integer times;
//    创建时间',
    private Date createTime;


}