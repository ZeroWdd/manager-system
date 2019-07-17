package com.zero.system.util;

import org.springframework.stereotype.Component;

@Component
public class AjaxResult {
    private boolean success;
    private String message;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void ajaxFalse(String message){
        this.message = message;
        this.success = false;
    }

    public void ajaxTrue(String message){
        this.message = message;
        this.success = true;
    }
}
