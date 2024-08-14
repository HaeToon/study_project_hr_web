package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class HRService {
    @Autowired
    SharedDao sharedDao;

    public Object insertHR(){
        return null;
    }
    public Object updateHR(){
        return null;
    }
    public Object deleteHR(){
        return null;
    }
    public Object selectEmpMonthly(){
        return null;
    }
    public Object selectDepMonthly(){
        return null;
    }
}
