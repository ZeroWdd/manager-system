package com.zero.system.controller;

import com.zero.system.entity.Admin;
import com.zero.system.entity.Role;
import com.zero.system.service.AdminService;
import com.zero.system.service.RoleService;
import com.zero.system.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Classname AdminController
 * @Description None
 * @Date 2019/7/17 17:00
 * @Created by WDD
 */
@Controller
@RequestMapping("/manager")
public class AdminController {

    @Autowired
    private AjaxResult ajaxResult;
    @Autowired
    private AdminService adminService;
    @Autowired
    private RoleService roleService;

    /**
     * 跳转管理员页面
     * @return
     */
    @GetMapping("/admin")
    public String admin(HttpSession session){
        //获取角色列表，存入session
        List<Role> roleList = roleService.selectAll();
        session.setAttribute(Const.ROLE,roleList);
        return "manager/admin/adminList";
    }

    /**
     * 异步加载管理员列表
     * @param pageno
     * @param pagesize
     * @param username
     * @param phone
     * @param email
     * @return
     */
    @RequestMapping("/adminList")
    @ResponseBody
    public Object adminList(@RequestParam(value = "page", defaultValue = "1") Integer pageno,
                                @RequestParam(value = "limit", defaultValue = "5") Integer pagesize,
                                String username,String phone,String email,String rid){
        Map<String,Object> paramMap = new HashMap();
        paramMap.put("pageno",pageno);
        paramMap.put("pagesize",pagesize);

        //判断是否为空
        if(!StringUtils.isEmpty(username)) paramMap.put("username",username);
        if(!StringUtils.isEmpty(phone)) paramMap.put("phone",phone);
        if(!StringUtils.isEmpty(email)) paramMap.put("email",email);
        if(!StringUtils.isEmpty(rid) && !rid.equals("0")) paramMap.put("rid",rid);

        PageBean<Admin> pageBean = adminService.queryPage(paramMap);

        Map<String,Object> rest = new HashMap();
        rest.put("code", 0);
        rest.put("msg", "");
        rest.put("count",pageBean.getTotalsize());
        rest.put("data", pageBean.getDatas());
        return rest;
    }

    /**
     * 跳转添加管理员页面
     * @return
     */
    @GetMapping("/addAdmin")
    public String addAdmin(String type, Integer id, Model model){
        if(type != null && type.equals("edit")){
            Admin admin = adminService.selectById(id);
            model.addAttribute(Const.ADMIN,admin);
        }
        return "manager/admin/addAdmin";
    }

    /**
     * 添加管理员  修改管理员
     * @param admin
     * @param status
     * @return
     */
    @PostMapping("/addAdmin")
    @ResponseBody
    public AjaxResult submitAddAdmin(Admin admin,String status){
        //on 表示通过 null 表示待审核
        if(status == null){
            admin.setStatus(0);
        }else{
            admin.setStatus(1);
        }
        if(admin.getId() !=null){
            //修改管理员
            int count = adminService.editByAdmin(admin);
            if(count > 0){
                ajaxResult.ajaxTrue("修改成功");
            }else{
                ajaxResult.ajaxFalse("修改失败");
            }

        }else{
            //添加管理员
            String stringDate = DateUtil.getStringDate("yyyy-MM-dd");
            admin.setCreatetime(stringDate);
            int count = adminService.insertAdmin(admin);
            if(count > 0){
                ajaxResult.ajaxTrue("添加成功");
            }else{
                ajaxResult.ajaxFalse("添加失败");
            }
        }
        return ajaxResult;
    }

    @PostMapping("/delAdmin")
    @ResponseBody
    public AjaxResult delAdmin(Data data){
        int count = adminService.delByAdminIds(data.getIds());
        if(count >= data.getIds().size()){
            ajaxResult.ajaxTrue("删除成功");
        }else{
            ajaxResult.ajaxFalse("删除失败");
        }
        return ajaxResult;
    }

}
