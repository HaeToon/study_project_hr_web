package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.SelectListByMonthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/selectByMonth")
@Controller
public class SelectListByMonthController {

    @Autowired
    private SelectListByMonthService selectListByMonthService;

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView joinProc(@RequestParam Map params, ModelAndView modelAndView) {
        HashMap hashMap = (HashMap) params;
        String month = (String) params.get("month");
        if (month.length() < 2) {
            month = "0" + month;
            hashMap.put("month", month);
        }
        String viewName = "/WEB-INF/views/hr/select.jsp";
        modelAndView.setViewName(viewName);
        modelAndView.addObject("list", this.selectListByMonthService.selectListByMonth((Object) hashMap));
        return modelAndView;
    }
}
