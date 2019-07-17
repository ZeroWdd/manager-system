package com.zero.system.mapper;

import com.zero.system.entity.Admin;

/**
 * @Classname AdminMapper
 * @Description None
 * @Date 2019/7/16 12:21
 * @Created by WDD
 */
public interface AdminMapper {

    Admin login(String username, String password);
}
