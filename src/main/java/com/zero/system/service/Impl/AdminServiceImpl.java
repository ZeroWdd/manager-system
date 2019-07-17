package com.zero.system.service.Impl;

import com.zero.system.entity.Admin;
import com.zero.system.mapper.AdminMapper;
import com.zero.system.service.AdminService;
import com.zero.system.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Classname AdminServiceImpl
 * @Description None
 * @Date 2019/7/16 12:20
 * @Created by WDD
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin login(String username, String password) {
        return adminMapper.login(username,password);
    }

    @Override
    public PageBean<Admin> queryPage(Map<String, Object> paramMap) {
        PageBean<Admin> pageBean = new PageBean<>((Integer) paramMap.get("pageno"),(Integer) paramMap.get("pagesize"));

        Integer startIndex = pageBean.getStartIndex();
        paramMap.put("startIndex",startIndex);
        List<Admin> datas = adminMapper.queryList(paramMap);
        pageBean.setDatas(datas);

        Integer totalsize = adminMapper.queryCount(paramMap);
        pageBean.setTotalsize(totalsize);
        return pageBean;
    }
}
