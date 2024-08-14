package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.SelectAttendByDepService;
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
public class SelectAttendByDepController {
    @Autowired
    SelectAttendByDepService selectByDepservice;
    @GetMapping("/dept-input")
    public ModelAndView selectDept(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/hr/select-dept-input.jsp");
        return modelAndView;
    }
    @PostMapping("/dept")
    public ModelAndView selectDeptProc(@RequestParam Map params, ModelAndView modelAndView){
        Object result = selectByDepservice.selectAttendByDep(params);
        String viewName = "/WEB-INF/views/hr/select-dept.jsp";
        modelAndView.setViewName(viewName);
        modelAndView.addObject("result",result);
        return modelAndView;
    }

}
