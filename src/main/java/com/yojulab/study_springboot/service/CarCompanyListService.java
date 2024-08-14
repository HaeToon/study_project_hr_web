package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class CarCompanyListService {
    @Autowired
    SharedDao sharedDao;

    public Object selectAll() {
        String sqlMapId = "CarCompany.selectAll";
        HashMap dataMap = new HashMap<>();
        Object result = sharedDao.getList(sqlMapId, dataMap);
        return result;
    }
}
