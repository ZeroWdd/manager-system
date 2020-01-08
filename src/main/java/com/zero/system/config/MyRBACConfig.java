package com.zero.system.config;

import com.zero.system.entity.Admin;
import com.zero.system.entity.TreeMenu;
import com.zero.system.mapper.TreeMenuMapper;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Auther: wdd
 * @Date: 2020/1/8 15:00
 * @Description:
 */
@Component("rbacConfig")
public class MyRBACConfig {

    @Resource
    private TreeMenuMapper treeMenuMapper;

    private AntPathMatcher antPathMatcher = new AntPathMatcher();

    /**
     * 判断某用户是否有request的权限
     * @param request
     * @param authentication
     * @return
     */
    public boolean hasPermission(HttpServletRequest request, Authentication authentication){
        Object principal = authentication.getPrincipal();
        if(principal instanceof Admin){
            String username = ((Admin) principal).getUsername();
            List<String> list = treeMenuMapper.selectByUserName(username);
            List<String> listUrl = treeMenuMapper.selectURLAll();
            boolean b = listUrl.stream().anyMatch( // 若该请求不存在所有权限中,则可能是静态资源,放行
                    url -> antPathMatcher.match(url, request.getRequestURI())
            );
            if(!b){
               return true;
            }else{
                // 存在所有权限中,再进行管理员所拥有的权限比较
                return list.stream().anyMatch(
                        url -> antPathMatcher.match(url, request.getRequestURI())
                );
            }
        }

        return false;
    }
}
