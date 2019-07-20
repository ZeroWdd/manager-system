package com.zero.system.mapper;

import com.zero.system.entity.Role;

import java.util.List;
import java.util.Map;

/**
 * @Classname RoleMapper
 * @Description None
 * @Date 2019/7/18 8:38
 * @Created by WDD
 */
public interface RoleMapper {
    List<Role> selectAll();

    List<Role> queryList(Map<String, Object> paramMap);

    Integer queryCount(Map<String, Object> paramMap);

    int delByRoleIds(List<Integer> ids);

    Role selectById(Integer id);

    Role selectByName(String name);

    int editByRole(Role role);

    int insertRole(Role role);
}
