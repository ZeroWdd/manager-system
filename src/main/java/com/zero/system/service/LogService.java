package com.zero.system.service;

import com.zero.system.entity.Log;
import com.zero.system.util.PageBean;

import java.util.List;
import java.util.Map;

/**
 * @Classname LogService
 * @Description None
 * @Date 2019/7/24 12:21
 * @Created by WDD
 */
public interface LogService {
    void insertByLog(Log log);

    PageBean<Log> queryPage(Map<String, Object> paramMap);

    int delByLogIds(List<Integer> ids);
}
