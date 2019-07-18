package com.zero.system.service;

import com.zero.system.entity.Admin;
import com.zero.system.util.PageBean;

import java.util.List;
import java.util.Map;

/**
 * @Classname AdminService
 * @Description None
 * @Date 2019/7/16 12:20
 * @Created by WDD
 */
public interface AdminService {

    Admin login(String username, String password);

    PageBean<Admin> queryPage(Map<String, Object> paramMap);

    int insertAdmin(Admin admin);

    Admin selectById(Integer id);

    int delByAdminIds(List<Integer> ids);

    int editByAdmin(Admin admin);

    Admin selectByName(String username);

    Admin selectByEmail(String email);
}
