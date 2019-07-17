package com.zero.system.controller;

import com.zero.system.entity.Admin;
import com.zero.system.service.AdminService;
import com.zero.system.util.AjaxResult;
import com.zero.system.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
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

    @GetMapping("/admin")
    public String admin(){
        return "manager/adminList";
    }

    @RequestMapping("/adminList")
    @ResponseBody
    public Object adminList(@RequestParam(value = "page", defaultValue = "1") Integer pageno,
                                @RequestParam(value = "limit", defaultValue = "5") Integer pagesize,
                                String username,String phone,String email){
        Map<String,Object> paramMap = new HashMap();
        paramMap.put("pageno",pageno);
        paramMap.put("pagesize",pagesize);

        //判断是否为空
        if(!StringUtils.isEmpty(username)) paramMap.put("username",username);
        if(!StringUtils.isEmpty(phone)) paramMap.put("phone",phone);
        if(!StringUtils.isEmpty(email)) paramMap.put("email",email);

        PageBean<Admin> pageBean = adminService.queryPage(paramMap);

        Map<String,Object> rest = new HashMap();
        rest.put("code", 0);
        rest.put("msg", "");
        rest.put("count",pageBean.getTotalsize());
        rest.put("data", pageBean.getDatas());

        return rest;
    }
}
