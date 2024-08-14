package com.yojulab.study_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hrproject")
public class HrProjectController {

    @GetMapping("/home")
    public ModelAndView home(ModelAndView modelAndView){

        modelAndView.setViewName("/WEB-INF/views/hr/main.jsp");
        return modelAndView;
    }
}
