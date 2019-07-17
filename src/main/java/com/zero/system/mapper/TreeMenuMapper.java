package com.zero.system.mapper;

import com.zero.system.entity.TreeMenu;

import java.util.List;

/**
 * @Classname TreeMenuMapper
 * @Description None
 * @Date 2019/7/17 9:00
 * @Created by WDD
 */
public interface TreeMenuMapper {
    List<TreeMenu> selectByAdminId(Integer id);
}
