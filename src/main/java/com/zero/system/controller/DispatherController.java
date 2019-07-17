package com.zero.system.controller;

import com.zero.system.entity.Admin;
import com.zero.system.service.AdminService;
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

/**
 * @Classname DispatherController
 * @Description 控制器
 * @Date 2019/7/16 8:36
 * @Created by WDD
 */
@Controller
@RequestMapping("/manager")
public class DispatherController {

    @Autowired
    private AjaxResult ajaxResult;

    @Autowired
    private AdminService adminService;

    /**
     * 跳转登录界面
     * @return
     */
    @GetMapping("/login")
    public String login(){
        return "manager/login";
    }

    /**
     * 表单提交登录
     * @param admin
     * @return
     */
    @PostMapping("/login")
    @ResponseBody
    public AjaxResult doLogin(Admin admin, HttpSession session){
        if(StringUtils.isEmpty(admin.getUsername())){
            ajaxResult.ajaxFalse("用户名不能为空");
            return ajaxResult;
        }
        if(StringUtils.isEmpty(admin.getPassword())){
            ajaxResult.ajaxFalse("密码不能为空");
            return ajaxResult;
        }
        // 查询用户是否存在 并返回用户数据
        try {
            Admin ad = adminService.login(admin.getUsername(),admin.getPassword());
            if(StringUtils.isEmpty(ad)){
                ajaxResult.ajaxFalse("用户名或密码错误");
            }else{
                session.setAttribute(Const.ADMIN,ad);
                ajaxResult.ajaxTrue("登录成功");
            }
        } catch (Exception e) {
            e.printStackTrace();
            ajaxResult.ajaxFalse("系统错误,请刷新");
        }
        return ajaxResult;
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "manager/login";
    }
}
