package com.zero.system.controller;

import com.zero.system.entity.Admin;
import com.zero.system.entity.Role;
import com.zero.system.service.AdminService;
import com.zero.system.service.RoleService;
import com.zero.system.util.AjaxResult;
import com.zero.system.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

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
    @Autowired
    private RoleService roleService;

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

                //获取角色列表，存入session
                if(session.getAttribute(Const.ROLE) == null){
                    List<Role> roleList = roleService.selectAll();
                    session.setAttribute(Const.ROLE,roleList);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            ajaxResult.ajaxFalse("系统错误,请刷新");
        }
        return ajaxResult;
    }

    /**
     * 登出
     * @param session
     * @return
     */
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "manager/login";
    }

    /**
     * 跳转修改密码页面
     * @return
     */
    @GetMapping("/password")
    public String password(){
        return "manager/common/password";
    }

    /**
     * 修改密码
     * @param session
     * @param password
     * @param newpassword
     * @param repassword
     * @return
     */
    @PostMapping("/editPassword")
    @ResponseBody
    public AjaxResult editPassword(HttpSession session,String password,String newpassword,String repassword){
        Admin admin = (Admin) session.getAttribute(Const.ADMIN);
        if(!password.equals(admin.getPassword())){
            ajaxResult.ajaxFalse("原密码错误");
            return ajaxResult;
        }
        if(!newpassword.equals(repassword)){
            ajaxResult.ajaxFalse("密码不一致");
            return ajaxResult;
        }
        admin.setPassword(newpassword);
        int count = adminService.editByAdmin(admin);
        if(count >= 1){
            ajaxResult.ajaxTrue("修改密码成功");
        }else{
            ajaxResult.ajaxFalse("系统错误");
        }
        return ajaxResult;
    }

    @GetMapping("/info")
    public String info(HttpSession session, Model model){
        Admin admin = (Admin) session.getAttribute(Const.ADMIN);
        Role role = roleService.selectById(admin.getRid());
        model.addAttribute(Const.ROLE,role);
        return "manager/common/info";
    }

    @PostMapping("/editInfo")
    @ResponseBody
    public AjaxResult editInfo(Admin admin,HttpSession session){
        Admin ad = (Admin) session.getAttribute(Const.ADMIN);
        ad.setUsername(admin.getUsername());
        ad.setEmail(admin.getEmail());
        ad.setPhone(admin.getPhone());
        int count = adminService.editByAdmin(ad);
        if(count >= 1){
            ajaxResult.ajaxTrue("修改成功");
        }else{
            ajaxResult.ajaxFalse("修改失败");
        }
        return ajaxResult;
    }

}
