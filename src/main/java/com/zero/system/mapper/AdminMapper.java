package com.zero.system.mapper;

import com.zero.system.entity.Admin;

import java.util.List;
import java.util.Map;

/**
 * @Classname AdminMapper
 * @Description None
 * @Date 2019/7/16 12:21
 * @Created by WDD
 */
public interface AdminMapper {

    Admin login(String username, String password);

    List<Admin> queryList(Map<String, Object> paramMap);

    Integer queryCount(Map<String, Object> paramMap);

    int insertAdmin(Admin admin);

    Admin selectById(Integer id);

    int delByAdminIds(List<Integer> ids);

    int editByAdmin(Admin admin);

    Admin selectByName(String username);

    Admin selectByEmail(String email);
}
