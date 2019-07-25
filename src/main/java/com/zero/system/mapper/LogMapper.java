package com.zero.system.mapper;

import com.zero.system.entity.Log;

import java.util.List;
import java.util.Map;

/**
 * @Classname LogMapper
 * @Description None
 * @Date 2019/7/24 12:23
 * @Created by WDD
 */
public interface LogMapper {
    void insertByLog(Log log);

    List<Log> queryList(Map<String, Object> paramMap);

    Integer queryCount(Map<String, Object> paramMap);

    int delByLogIds(List<Integer> ids);
}
