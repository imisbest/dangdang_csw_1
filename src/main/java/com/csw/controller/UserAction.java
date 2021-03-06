package com.csw.controller;

import com.csw.entity.User;
import com.csw.service.UserService;
import com.csw.service.UserServiceImpl;
import com.csw.util.MD5Utils;
import com.csw.util.SendEmailUtil;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class UserAction {
    HttpSession session = ServletActionContext.getRequest().getSession();
    UserService us = new UserServiceImpl();
    private User user;
    private String captchaCode;
    private String errorMsg;
    private String message;
    private String code;
    private String name;
    private String password;
    private List<User> listuser;
    private String userid;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public List<User> getListuser() {
        return listuser;
    }

    public void setListuser(List<User> listuser) {
        this.listuser = listuser;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

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

    public String getCaptchaCode() {
        return captchaCode;
    }

    public void setCaptchaCode(String captchaCode) {
        this.captchaCode = captchaCode;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String registAction() {
        System.out.println("?????????" + user.getEmail());
        System.out.println("?????????" + user.getNickname());
        System.out.println("?????????" + user.getPassword());
        if (user.getEmail().equals("") || user.getNickname().equals("") || user.getPassword().equals("")) {
            errorMsg = "?????????";
            return "register_form";
        }
        user.setId(UUID.randomUUID() + "");
        user.setSalt(MD5Utils.getSalt());
        user.setCreate_date(new Date());
        user.setPassword(MD5Utils.getPassword(user.getPassword()
                + user.getSalt()));
        user.setStatus("??????");
        System.out.println("user:" + user);
        try {
            User uu = us.queryBy(user);// ???????????????????????????
            System.out.println("session.getAttributesecurityCode"
                    + session.getAttribute("securityCode"));
            System.out.println("captchaCode" + captchaCode);
            if (uu == null
                    && session.getAttribute("securityCode").equals(captchaCode)) {
                us.regist(user);
                session.setAttribute("user", user);
                return "registNextAction";
            } else {
                errorMsg = "???????????????";
                return "register_form";
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            errorMsg = e.getMessage();
            return "register_form";
        }
    }

    public String registNextAction() {
        User user = (User) session.getAttribute("user");
        session.setAttribute("nickname", user.getNickname());
        session.setAttribute("email", user.getEmail());
        String code = MD5Utils.getNum();
        session.setAttribute("code", code);
        SendEmailUtil.sendMessage("2197466344@qq.com", code);
        return "verify_form";

    }

    public String updateStatus() {
        System.out.println("session.getAttributecode"
                + session.getAttribute("code"));
        System.out.println("code:" + code);
        if (session.getAttribute("code").equals(code)) {
            User user = (User) session.getAttribute("user");
            user.setCode(code);
            us.update(user);
            return "register_ok";
        } else {
            errorMsg = "???????????????";
            return "verify_form";
        }

    }

    public String safeOut() {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        session.invalidate();
        return "login_form";
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    public String loginAction() {
        System.out.println("name:" + name);
        System.out.println("password:" + password);

        try {
            if (name.equals("")) {
                errorMsg = "???????????????????????????????????????";
            }
            if (password.equals("")) {
                errorMsg = "???????????????????????????????????????";
            }
            String psw = MD5Utils.getPassword(password + us.querysalt(name));
            User uu = us.query(name, psw);
            System.out.println("uu:" + uu);

            if (uu != null) {
                if (uu.getStatus().equals("??????")) {
                    errorMsg = "??????????????????????????????????????????";
                    return "login_form";
                } else {
                    session.setAttribute("user", uu);
                    return "showAllInformation";
                }

            } else {
                return "login_form";
            }
        } catch (Exception e) {
            e.printStackTrace();
            errorMsg = e.getMessage();
            System.out.println("errorMsg:" + errorMsg);
            return "login_form";
        }

    }

    // //??????????????????//////////////////////////////////////////////////////////////////////////////
    // ????????????????????????struts-user.xml
    public String backShowAction() {
        listuser = us.queryAllUser();
        for (User uu : listuser) {
            System.out.println("uu:" + uu);
        }
        return "show";
    }

    // ??????????????????
    public String changeCode() {
        System.out.println("changeCode()?????????");
        User uu = us.queryByID(userid);
        System.out.println("uu.getStatus():" + uu.getStatus());
        if (uu.getStatus().equals("??????")) {
            System.out.println("uu.getStatus().equals??????:"
                    + uu.getStatus().equals("??????"));
            uu.setStatus("??????");
            us.updateht(uu);
        } else if (uu.getStatus().equals("??????")) {
            System.out.println("uu.getStatus().equals??????:"
                    + uu.getStatus().equals("??????"));
            uu.setStatus("??????");
            us.updateht(uu);
        }
        System.out.println("changeCode()?????????");
        return "backShowAction";
    }

}
