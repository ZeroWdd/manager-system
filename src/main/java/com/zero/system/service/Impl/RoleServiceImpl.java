package com.zero.system.service.Impl;

import com.zero.system.entity.Role;
import com.zero.system.mapper.RoleMapper;
import com.zero.system.service.RoleService;
import com.zero.system.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

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

    @Override
    public PageBean<Role> queryPage(Map<String, Object> paramMap) {
        PageBean<Role> pageBean = new PageBean<>((Integer) paramMap.get("pageno"),(Integer) paramMap.get("pagesize"));

        Integer startIndex = pageBean.getStartIndex();
        paramMap.put("startIndex",startIndex);
        List<Role> datas = roleMapper.queryList(paramMap);
        pageBean.setDatas(datas);

        Integer totalsize = roleMapper.queryCount(paramMap);
        pageBean.setTotalsize(totalsize);
        return pageBean;
    }

    @Override
    @Transactional
    public int delByRoleIds(List<Integer> ids) {
        try {
            return roleMapper.delByRoleIds(ids);
        } catch (Exception e) {
            //存在管理员拥有此角色，无法删除
            return 0;
        }
    }

    @Override
    public Role selectById(Integer id) {
        return roleMapper.selectById(id);
    }

    @Override
    public Role selectByName(String name) {
        return roleMapper.selectByName(name);
    }

    @Override
    public int editByRole(Role role) {
        return roleMapper.editByRole(role);
    }

    @Override
    public int insertRole(Role role) {
        return roleMapper.insertRole(role);
    }
}
