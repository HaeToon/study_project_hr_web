package com.yojulab.study_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hrproject")
public class HRController {

    @GetMapping("/home")
    public ModelAndView home(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/main.jsp");
        return modelAndView;
    }

<<<<<<< HEAD:src/main/java/com/yojulab/study_springboot/controller/HrProjectController.java
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

    @GetMapping("/dept")
    public ModelAndView selectDept(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/select-dept.jsp");
=======
    @GetMapping("/insert")
    public ModelAndView insertHR(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/insert.jsp");
        return modelAndView;
    }
    @PostMapping("/insert")
    public ModelAndView insertHRProcess(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/views/hr/main.jsp");
>>>>>>> 39edd24d1215fa248083422b82de4dd9380addb4:src/main/java/com/yojulab/study_springboot/controller/HRController.java
        return modelAndView;
    }

}
