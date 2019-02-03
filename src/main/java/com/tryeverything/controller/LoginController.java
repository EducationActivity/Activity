package com.tryeverything.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class LoginController {

    @RequestMapping("login")
    public String login(){
        return "franchisee_login";
    }

    @RequestMapping("index")
    public String index(){
        return "index";
    }

}
