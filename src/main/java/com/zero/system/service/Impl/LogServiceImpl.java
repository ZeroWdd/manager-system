package com.zero.system.service.Impl;

import com.zero.system.entity.Log;
import com.zero.system.mapper.LogMapper;
import com.zero.system.service.LogService;
import com.zero.system.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Classname LogServiceImpl
 * @Description None
 * @Date 2019/7/24 12:21
 * @Created by WDD
 */
@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogMapper logMapper;

    @Override
    public void insertByLog(Log log) {
        logMapper.insertByLog(log);
    }

    @Override
    public PageBean<Log> queryPage(Map<String, Object> paramMap) {
        PageBean<Log> pageBean = new PageBean<>((Integer) paramMap.get("pageno"),(Integer) paramMap.get("pagesize"));

        Integer startIndex = pageBean.getStartIndex();
        paramMap.put("startIndex",startIndex);
        List<Log> datas = logMapper.queryList(paramMap);
        pageBean.setDatas(datas);

        Integer totalsize = logMapper.queryCount(paramMap);
        pageBean.setTotalsize(totalsize);
        return pageBean;
    }

    @Override
    public int delByLogIds(List<Integer> ids) {
        return logMapper.delByLogIds(ids);
    }
}
