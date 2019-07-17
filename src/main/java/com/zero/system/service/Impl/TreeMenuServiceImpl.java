package com.zero.system.service.Impl;

import com.zero.system.entity.TreeMenu;
import com.zero.system.mapper.TreeMenuMapper;
import com.zero.system.service.TreeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Classname TreeMenuServiceImpl
 * @Description None
 * @Date 2019/7/16 23:08
 * @Created by WDD
 */
@Service
public class TreeMenuServiceImpl implements TreeMenuService {

    @Autowired
    private TreeMenuMapper treeMenuMapper;

    @Override
    public List<TreeMenu> selectByAdminId(Integer id) {
        //获取用户所有的全部权限(父,子权限)菜单
        List<TreeMenu> treeMenuList = treeMenuMapper.selectByAdminId(id);
        //保存所有的父(主)菜单
        List<TreeMenu> root = new ArrayList<>();
        //遍历所有菜单集合,如果是主菜单的话直接放入root集合
        for(TreeMenu treeMenu : treeMenuList){
            //pid为0,则为父(主)菜单
            if(treeMenu.getPid() == 0){
                root.add(treeMenu);
            }
        }
        //这个是遍历所有主菜单,分别获取所有主菜单的所有子菜单
        for(TreeMenu treeMenu : root){
            //获取所有子菜单 递归
            List<TreeMenu> childrenList = getchildrenMeun(treeMenu.getId(),treeMenuList);
            //这个是实体类中的子菜单集合
            treeMenu.setChildren(childrenList);
        }
        return root;
    }


    //递归获取子菜单
    public List<TreeMenu> getchildrenMeun(int id,List<TreeMenu> allMeun){
        //用于保存子菜单
        List<TreeMenu> childrenList=new ArrayList<>();
        for (TreeMenu info: allMeun){
            //判断当前的菜单标识是否等于主菜单的id
            if(info.getPid()==id){
                //如果是的话 就放入主菜单对象的子菜单集合
                childrenList.add(info);
            }
        }

        //这里就是递归了，遍历所有的子菜单
        for (TreeMenu info:childrenList){
            info.setChildren(getchildrenMeun(info.getId(),allMeun));
        }

        //如果子菜单为空的话，那就说明某菜单下没有子菜单了，直接返回空,子菜单为空的话就不会继续
        //迭代了
        if(childrenList!=null && childrenList.size()==0){
            return null;
        }
        return  childrenList;
    }
}
