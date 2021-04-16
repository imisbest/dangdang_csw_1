package com.csw.controller;

import com.csw.entity.Admin;
import com.csw.service.AdminService;
import com.csw.service.AdminServiceImpl;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AdminAction {
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpSession session = request.getSession();
    AdminService us = new AdminServiceImpl();
    private String username;
    private String password;
    private Admin admin;
    private String captchaCode;
    private String errorMsg;
    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public String getCaptchaCode() {
        return captchaCode;
    }

    public void setCaptchaCode(String captchaCode) {
        this.captchaCode = captchaCode;
    }

    public String login() {
        try {
            Admin uu = us.queryBy(admin);
            String secrutiyCodeString = (String) session
                    .getAttribute("securityCode");

            if (uu != null && secrutiyCodeString.equals(captchaCode)) {
                session.setAttribute("admin", uu);
                return "main";
            } else {
                errorMsg = "验证码错误";
                return "login";
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            message = e.getMessage();
            System.out.println("message:" + message);
            e.printStackTrace();
            return "login";
        }
    }

    public String safeOut() {
        System.out.println("进入safeOut");
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        session.invalidate();
        System.out.println("执行完毕safeOut");
        return "safeout";
    }
}
