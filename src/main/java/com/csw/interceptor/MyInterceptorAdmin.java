package com.csw.interceptor;

import com.csw.entity.Admin;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class MyInterceptorAdmin implements Interceptor {
    @Override
    public String intercept(ActionInvocation ai) throws Exception {
        // TODO Auto-generated method stub
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        Admin user2 = (Admin) session.getAttribute("admin");
        if (user2 == null) {
            return "safeOut";
        } else {
            ai.invoke();
            return null;
        }
    }

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

}
