package com.zero.system.config;

import com.zero.system.handler.LoginFailureHandler;
import com.zero.system.handler.LoginSuccessHandler;
import com.zero.system.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.AccessDecisionVoter;
import org.springframework.security.access.vote.RoleVoter;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;

import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: wdd
 * @Date: 2019/12/29 14:12
 * @Description:
 */
@Configuration
@EnableWebSecurity
//@EnableGlobalMethodSecurity(securedEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private AdminService adminService;

    @Autowired
    private LoginSuccessHandler loginSuccessHandler;
    @Autowired
    private LoginFailureHandler loginFailureHandler;

    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http//.addFilterAfter(dynamicallyUrlInterceptor(), FilterSecurityInterceptor.class)
                .authorizeRequests()
                .antMatchers("/manager/login").permitAll()
                .antMatchers("/mystatic/**","/layuiadmin/**","/font-awesome-4.7.0/**").permitAll()
                //.antMatchers("/**")
                //.fullyAuthenticated()
                .anyRequest().access("@rbacConfig.hasPermission(request,authentication)")
                .and()
                .formLogin().loginPage("/manager/login").successHandler(loginSuccessHandler).failureHandler(loginFailureHandler)
                .and()
                .headers().frameOptions().disable() // 防止报Refused to display in a frame because it set 'X-Frame-Options' to 'DENY'错误
                .and()
                .csrf().disable();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(adminService)
                .passwordEncoder(passwordEncoder());
    }

//    @Bean
//    public DynamicallyUrlInterceptor dynamicallyUrlInterceptor(){
//        DynamicallyUrlInterceptor interceptor = new DynamicallyUrlInterceptor();
//        interceptor.setSecurityMetadataSource(new MyFilterSecurityMetadataSource());
//
//        //配置RoleVoter决策
//        List<AccessDecisionVoter<? extends Object>> decisionVoters = new ArrayList<AccessDecisionVoter<? extends Object>>();
//        decisionVoters.add(new RoleVoter());
//        //设置认证决策管理器
//        interceptor.setAccessDecisionManager(new DynamicallyUrlAccessDecisionManager(decisionVoters));
//        return interceptor;
//    }
}
