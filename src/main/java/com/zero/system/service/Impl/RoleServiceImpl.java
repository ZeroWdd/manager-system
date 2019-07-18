package com.zero.system.service.Impl;

import com.zero.system.entity.Role;
import com.zero.system.mapper.RoleMapper;
import com.zero.system.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Classname RoleServiceImpl
 * @Description None
 * @Date 2019/7/18 8:36
 * @Created by WDD
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> selectAll() {
        return roleMapper.selectAll();
    }
}
