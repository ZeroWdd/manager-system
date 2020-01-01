package com.zero.system.config;

import com.zero.system.entity.Admin;
import com.zero.system.entity.Role;
import com.zero.system.entity.TreeMenu;
import com.zero.system.mapper.RoleMapper;
import com.zero.system.mapper.TreeMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * @Auther: wdd
 * @Date: 2019/12/31 16:36
 * @Description:
 */
public class MyFilterSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private TreeMenuMapper treeMenuMapper;

    private static Map<RequestMatcher, Collection<ConfigAttribute>> requestMap;

    /*
     * 这个例子放在构造方法里初始化url权限数据，我们只要保证在 getAttributes()之前初始好数据就可以了
     */
    public MyFilterSecurityMetadataSource() {
        Map<RequestMatcher, Collection<ConfigAttribute>> map = new HashMap<>();

//        AntPathRequestMatcher matcher = new AntPathRequestMatcher("/product/delete");
//        org.springframework.security.access.SecurityConfig config = new org.springframework.security.access.SecurityConfig("ROLE_SUPER_ADMIN");
//        ArrayList<ConfigAttribute> configs = new ArrayList<>();
//        configs.add(config);
//        map.put(matcher,configs);

//        AntPathRequestMatcher matcher2 = new AntPathRequestMatcher("/manager/admin");
//        org.springframework.security.access.SecurityConfig config2 = new SecurityConfig("ROLE_ADMIN");
//        ArrayList<ConfigAttribute> configs2 = new ArrayList<>();
//        configs2.add(config2);
//        map.put(matcher2,configs2);


//        for(TreeMenu m : treeMenuMapper.selectAll()){
//            if(!StringUtils.isEmpty(m.getUrl())){
//                AntPathRequestMatcher matcher = new AntPathRequestMatcher(m.getUrl());
//                ArrayList<ConfigAttribute> configs = new ArrayList<>();
//                for(Role r : roleMapper.findByTreeMenuId(m.getId())){
//                    org.springframework.security.access.SecurityConfig config = new SecurityConfig(r.getName());
//                    configs.add(config);
//                }
//                map.put(matcher,configs);
//            }
//        }
        this.requestMap = map;
    }

    public MyFilterSecurityMetadataSource(Map<RequestMatcher, Collection<ConfigAttribute>> map) {

        this.requestMap = map;
    }


    /**
     * 在我们初始化的权限数据中找到对应当前url的权限数据
     *
     * @param object
     * @return
     * @throws IllegalArgumentException
     */
    @Override
    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
        FilterInvocation fi = (FilterInvocation) object;
        HttpServletRequest request = fi.getRequest();
        String url = fi.getRequestUrl();
        String httpMethod = fi.getRequest().getMethod();

        // Lookup your database (or other source) using this information and populate the
        // list of attributes (这里初始话你的权限数据)
        //List<ConfigAttribute> attributes = new ArrayList<ConfigAttribute>();

        //遍历我们初始化的权限数据，找到对应的url对应的权限
        for (Map.Entry<RequestMatcher, Collection<ConfigAttribute>> entry : this.requestMap
                .entrySet()) {
            if (entry.getKey().matches(request)) {
                return entry.getValue();
            }
        }
        return null;
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return FilterInvocation.class.isAssignableFrom(clazz);
    }
}
