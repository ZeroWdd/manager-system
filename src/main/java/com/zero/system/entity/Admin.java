package com.zero.system.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

/**
 * @Classname Admin
 * @Description None
 * @Date 2019/7/16 12:03
 * @Created by WDD
 */
@Data
public class Admin implements UserDetails {
    private Integer id;
    private String username;
    private String password;
    private String phone;
    private String email;
    private Integer rid;
    private Integer status; // 0为待审核，1为通过
    private String createtime;

    //添加元素
    private String roleName;
    private List<Role> roles;


    @JsonIgnore
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles;
    }

    @JsonIgnore
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @JsonIgnore
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @JsonIgnore
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @JsonIgnore
    @Override
    public boolean isEnabled() {
        return true;
    }
}
