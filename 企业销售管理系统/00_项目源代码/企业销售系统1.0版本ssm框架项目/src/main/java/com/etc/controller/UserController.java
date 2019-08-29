package com.etc.controller;

import com.etc.entity.User;
import com.etc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    //4、注册 访问（/house/reg）进入WEBINFO的jsp的regs页面 进入到regs.jsp界面，这里需要配置一个-- 视图解析器--
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/dologin")
    public String doLogin(String name, String password, HttpSession session) {

        User user = userService.login(name, password);
        System.out.println(user);
        if (user == null) {
            return "login";
        }
        session.setAttribute("user", user);
        return "redirect:/user/frame";
    }

    @RequestMapping("/frame")
    public String show() {
        return "frame1";
    }

    @RequestMapping("/exit")
    public String exit(HttpSession httpSession){
        httpSession.removeAttribute("user");
        return "redirect:login";
    }
}
