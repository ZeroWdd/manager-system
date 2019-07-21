package com.zero.system.controller;

import com.zero.system.entity.Permission;
import com.zero.system.service.TreeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Classname PermissionController
 * @Description None
 * @Date 2019/7/21 9:51
 * @Created by WDD
 */
@Controller
@RequestMapping("/manager")
public class PermissionController {

    @Autowired
    private TreeMenuService treeMenuService;

    /**
     * 跳转登录界面
     * @return
     */
    @GetMapping("/permission")
    public String permission(){
        return "manager/permission/permissionList";
    }


    @PostMapping("/permissionList")
    @ResponseBody
    public Object permissionList(HttpSession session){
        List<Permission> permissionList = treeMenuService.selectAll();
        return permissionList;
    }
}
