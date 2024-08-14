package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.CarCompanyListService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarCompanyListController {
private final CarCompanyListService carCompanyListService;

    public CarCompanyListController(CarCompanyListService carCompanyListService) {
        this.carCompanyListService = carCompanyListService;
    }

    @GetMapping("/CarCompanyList")
    public ModelAndView carCompanyList(ModelAndView modelAndView){
       Object result = carCompanyListService.selectAll();
       modelAndView.addObject("result",result);
       modelAndView.setViewName("/WEB-INF/views/carcompanylist.jsp");
       return modelAndView;
    }
}
