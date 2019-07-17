package com.zero.system.service;

import com.zero.system.entity.TreeMenu;

import java.util.List;

/**
 * @Classname TreeMenuService
 * @Description None
 * @Date 2019/7/16 23:08
 * @Created by WDD
 */
public interface TreeMenuService {

    List<TreeMenu> selectByAdminId(Integer id);
}
