package com.zero.system.entity;

import java.util.List;

/**
 * @Classname Permission
 * @Description None
 * @Date 2019/7/21 20:35
 * @Created by WDD
 */
public class Permission {

    private Integer id;
    private Integer pid;
    private String url;

    private String title;
    private String value;
    private boolean checked;
    private List<Permission> data;

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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public List<Permission> getData() {
        return data;
    }

    public void setData(List<Permission> data) {
        this.data = data;
    }
}
