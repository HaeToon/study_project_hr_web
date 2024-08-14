package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.HRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/hrproject")
public class HRController {

    @Autowired
    private HRService hrService;

    @GetMapping("/home")
    public ModelAndView home(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/main.jsp");
        return modelAndView;
    }
    @GetMapping("/delete")
    public ModelAndView delete(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/delete.jsp");
        return modelAndView;
    }

    @GetMapping("/insert")
    public ModelAndView insert(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/insert.jsp");
        return modelAndView;
    }

    @GetMapping("/select")
    public ModelAndView select(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/select.jsp");
        return modelAndView;
    }

    @PostMapping("/insert")
    public ModelAndView insertProcess(@RequestParam Map paramMap, ModelAndView modelAndView){
        try {
            Object result = hrService.insertHR(paramMap);
            modelAndView.addObject("result", result);
        } catch (Exception e) {
            e.printStackTrace();
            modelAndView.addObject("result", "Error: " + e.getMessage()); // 예외 로그 출력
        }
        modelAndView.setViewName("/WEB-INF/views/hr/insert.jsp");
        return modelAndView;
    }
}
