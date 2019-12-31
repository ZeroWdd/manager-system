package com.zero.system.mapper;

import com.zero.system.entity.Admin;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.List;
import java.util.Map;

/**
 * @Classname AdminMapper
 * @Description None
 * @Date 2019/7/16 12:21
 * @Created by WDD
 */
public interface AdminMapper {

    Admin login(String username, String password);

    List<Admin> queryList(Map<String, Object> paramMap);

    Integer queryCount(Map<String, Object> paramMap);

    int insertAdmin(Admin admin);

    Admin selectById(Integer id);

    int delByAdminIds(List<Integer> ids);

    int editByAdmin(Admin admin);

    Admin selectByName(String username);

    Admin selectByEmail(String email);

    @Select("select * from admin where username = #{username}")
    @Results({
            @Result(id = true, property = "id",column = "id"),
            @Result(property = "roles", column = "id", javaType = List.class,
                    many = @Many(select = "com.zero.system.mapper.RoleMapper.findByAdminId"))
    })
    Admin findByName(String username);
}
