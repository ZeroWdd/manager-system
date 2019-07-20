package com.zero.system.service;

import com.zero.system.entity.Role;
import com.zero.system.util.PageBean;

import java.util.List;
import java.util.Map;

/**
 * @Classname RoleService
 * @Description None
 * @Date 2019/7/18 8:35
 * @Created by WDD
 */
public interface RoleService {
    List<Role> selectAll();

    PageBean<Role> queryPage(Map<String, Object> paramMap);

    int delByRoleIds(List<Integer> ids);

    Role selectById(Integer id);

    Role selectByName(String name);

    int editByRole(Role role);

    int insertRole(Role role);
}
