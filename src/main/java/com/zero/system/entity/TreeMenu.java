package com.zero.system.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * @Classname TreeMenu
 * @Description 菜单树
 * @Date 2019/7/16 23:09
 * @Created by WDD
 */
public class TreeMenu {
    private Integer id;

    private Integer pid;

    private String name;

    private String icon;

    private String url;

    private Boolean checked = false;

    //添加元素
    private List<TreeMenu> children = new ArrayList<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<TreeMenu> getChildren() {
        return children;
    }

    public void setChildren(List<TreeMenu> children) {
        this.children = children;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }
}
