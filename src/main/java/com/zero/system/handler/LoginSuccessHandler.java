package com.zero.system.handler;

import com.alibaba.fastjson.JSON;
import com.zero.system.config.MyFilterSecurityMetadataSource;
import com.zero.system.entity.Admin;
import com.zero.system.entity.Role;
import com.zero.system.entity.TreeMenu;
import com.zero.system.mapper.RoleMapper;
import com.zero.system.mapper.TreeMenuMapper;
import com.zero.system.service.RoleService;
import com.zero.system.util.AjaxResult;
import com.zero.system.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

/**
 * @Auther: wdd
 * @Date: 2019/12/30 15:04
 * @Description:
 */
@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    private AjaxResult ajaxResult;

    @Autowired
    private RoleService roleService;

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private TreeMenuMapper treeMenuMapper;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Admin ad = (Admin) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        session.setAttribute(Const.ADMIN,ad);
        //获取角色列表，存入session
        if(session.getAttribute(Const.ROLE) == null){
            List<Role> roleList = roleService.selectAll();
            session.setAttribute(Const.ROLE,roleList);
        }

        Map<RequestMatcher, Collection<ConfigAttribute>> map = new HashMap<>();
        for(TreeMenu m : treeMenuMapper.selectAll()){
            if(!StringUtils.isEmpty(m.getUrl())){
                AntPathRequestMatcher matcher = new AntPathRequestMatcher(m.getUrl());
                ArrayList<ConfigAttribute> configs = new ArrayList<>();
                for(Role r : roleMapper.findByTreeMenuId(m.getId())){
                    org.springframework.security.access.SecurityConfig config = new SecurityConfig(r.getName());
                    configs.add(config);
                }
                map.put(matcher,configs);
            }
        }
        new MyFilterSecurityMetadataSource(map);
        ajaxResult.ajaxTrue("登录成功");
        String json = JSON.toJSONString(ajaxResult);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(json);
    }
}
