package com.suke.czx.modules.cms.dao;

import com.suke.czx.modules.cms.entity.ScheduleJobLog;

public interface ScheduleJobLogMapper {
    int deleteByPrimaryKey(Long logId);

    int insert(ScheduleJobLog record);

    int insertSelective(ScheduleJobLog record);

    ScheduleJobLog selectByPrimaryKey(Long logId);

    int updateByPrimaryKeySelective(ScheduleJobLog record);

    int updateByPrimaryKey(ScheduleJobLog record);
}