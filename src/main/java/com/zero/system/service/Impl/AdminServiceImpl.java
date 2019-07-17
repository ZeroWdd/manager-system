package com.zero.system.service.Impl;

import com.zero.system.entity.Admin;
import com.zero.system.mapper.AdminMapper;
import com.zero.system.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
