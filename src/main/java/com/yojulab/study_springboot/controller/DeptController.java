package com.yojulab.study_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/dept")
@Controller
public class DeptController {
    @PostMapping
    @ResponseBody
    public Object insertDept(@RequestParam Map params, ModelAndView modelAndView) {
        System.out.println(params.get("dept"));
        return params;
    }
}
