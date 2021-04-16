package com.csw.interceptor;

import com.csw.entity.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class MyInterceptorUser implements Interceptor {
    @Override
    public String intercept(ActionInvocation ai) throws Exception {
        // TODO Auto-generated method stub
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        User user2 = (User) session.getAttribute("user");
        System.out.println("MyInterceptorUser user:" + user2);
        if (user2 == null) {
            System.out.println("u1");
            return "userlogin";
        } else {
            System.out.println("user2.getCode() == null:" + (user2.getCode() == null));
            if (user2.getCode() == null) {
                System.out.println("u2");
                return "active";
            } else {
                System.out.println("u3");
                ai.invoke();
                return null;
            }
        }
    }

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

}
