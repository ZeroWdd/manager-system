package com.zero.system.controller;

import com.zero.system.entity.Admin;
import com.zero.system.entity.TreeMenu;
import com.zero.system.service.TreeMenuService;
import com.zero.system.util.AjaxResult;
import com.zero.system.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Classname ManagerController
 * @Description 后台控制器
 * @Date 2019/7/16 14:43
 * @Created by WDD
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {

    @Autowired
    private AjaxResult ajaxResult;
    @Autowired
    private TreeMenuService treeMenuService;

    /**
     * 跳转后台页面
     * @return
     */
    @GetMapping("/index")
    public String index(){
        return "manager/index";
    }

    /**
     * 异步加载权限树
     * @param session
     * @return
     */
    @PostMapping("/treeMenu")
    @ResponseBody
    public Object treeMenu(HttpSession session){
        if(!StringUtils.isEmpty(session.getAttribute(Const.TREEMENU))){
            return session.getAttribute(Const.TREEMENU);
        }
        Admin admin = (Admin) session.getAttribute(Const.ADMIN);
        List<TreeMenu> treeMenuList = treeMenuService.selectByAdminId(admin.getId());
        session.setAttribute(Const.TREEMENU,treeMenuList);
        return treeMenuList;
    }

    /**
     * 异步加载后台主页
     * @return
     */
    @GetMapping("/console")
    public String console(){
        return "manager/console";
    }

}
