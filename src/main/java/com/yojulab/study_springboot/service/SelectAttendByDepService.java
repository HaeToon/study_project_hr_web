package com.yojulab.study_springboot.service;

import com.yojulab.study_springboot.dao.SharedDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class SelectAttendByDepService {
    @Autowired
    SharedDao sharedDao;

    public Object selectAttendByDep(Map dataMap){
        String like = (String)dataMap.get("WORKDATE");

        String sqlMapId = "HRSelect.selectAttendByDep";
        Object result = sharedDao.getList(sqlMapId,dataMap);
        return result;
    }
}
