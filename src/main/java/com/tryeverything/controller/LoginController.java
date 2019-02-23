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
	@RequestMapping("activity_frontPage")
    public String activity_frontPage(){
        return "activity_frontPage";
    }

    @RequestMapping("activity_detail")
    public String activity_detail(){
        return "activity_detail";
    }

    @RequestMapping("wupin_detail")
    public String wupin_detail(){
        return "wupin_detail";
    }

    @RequestMapping("wupin_frontPage")
    public String wupin_frontPage(){
        return "wupin_frontPage";
    }

    @RequestMapping("course_frontPage")
    public String course_frontPage(){
        return "course_frontPage";
    }

    @RequestMapping("course_detail")
    public String course_detail(){
        return "course_detail";
    }

    @RequestMapping("blog_main")
    public String blog_main(){
        return "blog_main";
    }

    @RequestMapping("blog_post")
    public String blog_post(){
        return "blog_post";
    }
    @RequestMapping("about")
    public String about(){
        return "about";
    }


    @RequestMapping("contact")
    public String contact(){
        return "contact";
    }
    @RequestMapping("service")
    public String service(){
        return "service";
    }
    @RequestMapping("casePage")
    public String casePage(){
        return "casePage";
    }
    @RequestMapping("expect")
    public String expect(){
        return "expect";
    }

}
