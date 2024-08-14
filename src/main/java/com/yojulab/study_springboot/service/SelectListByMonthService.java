package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class SelectListByMonthService {

    @Autowired
    private SharedDao sharedDao;
    public Object selectListByMonth(Object params) {
        String sqlId = "ListByMonth.selectByMonthAndUserId";
        return sharedDao.getListByMonth(sqlId, params);
    }
}
