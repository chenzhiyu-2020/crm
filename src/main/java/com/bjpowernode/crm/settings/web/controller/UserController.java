package com.bjpowernode.crm.settings.web.controller;

import com.bjpowernode.crm.settings.domain.User;
import com.bjpowernode.crm.settings.service.UserService;
import com.bjpowernode.crm.settings.service.impl.UserServiceImpl;
import com.bjpowernode.crm.utils.MD5Util;
import com.bjpowernode.crm.utils.PrintJson;
import com.bjpowernode.crm.utils.ServiceFactory;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 北京动力节点
 */
public class UserController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入到用户控制器");
        String path = request.getServletPath();
        if ("/settings/user/login.do".equals(path)) {
            login(request, response);
        }else if("/settings/user/updatePwd.do".equals(path)) {
            updatePwd(request, response);
        }
    }

    private void updatePwd(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        System.out.println("-------------------------------------------"+id);
        String loginPwd = MD5Util.getMD5(request.getParameter("loginPwd"));
        System.out.println("-------------------------------------------"+loginPwd);
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        Map<String, String> map = new HashMap<String, String>(16);
        map.put("id", id);
        map.put("loginPwd", loginPwd);
        boolean flag = us.updatePwd(map);
        PrintJson.printJsonFlag(response,flag);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("进入到验证登录操作");
        String loginAct = request.getParameter("loginAct");
        String loginPwd = request.getParameter("loginPwd");
        //将密码的明文形式转换为MD5的密文形式
        loginPwd = MD5Util.getMD5(loginPwd);
        //接收浏览器端的ip地址
        String ip = request.getRemoteAddr();
        System.out.println("--------------ip:" + ip);
        //未来业务层开发，统一使用代理类形态的接口对象
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());
        try {
            User user = us.login(loginAct, loginPwd, ip);
            request.getSession().setAttribute("user", user);
            //如果程序执行到此处，说明业务层没有为controller抛出任何的异常
            //表示登录成功
            PrintJson.printJsonFlag(response, true);
        } catch (Exception e) {
            e.printStackTrace();
            //一旦程序执行了catch块的信息，说明业务层为我们验证登录失败，为controller抛出了异常
            //表示登录失败
            String msg = e.getMessage();
            Map<String, Object> map = new HashMap<String, Object>(16);
            map.put("success", false);
            map.put("msg", msg);
            PrintJson.printJsonObj(response, map);
        }
    }
}