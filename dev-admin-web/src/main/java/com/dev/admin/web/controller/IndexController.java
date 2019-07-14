package com.dev.admin.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 惠振川
 * 2019/3/10/010
 * 17:02
 */
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String index(){
        //ModelAndView mv = new ModelAndView();
        //mv.setViewName("/login");
        return "/index";
    }

}
