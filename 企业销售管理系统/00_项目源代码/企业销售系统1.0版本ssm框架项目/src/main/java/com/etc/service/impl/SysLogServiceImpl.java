package com.etc.service.impl;

import com.etc.dao.ISysLogDao;
import com.etc.entity.SysLog;
import com.etc.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SysLogServiceImpl implements ISysLogService {

    @Autowired
    private ISysLogDao sysLogDao;


    @Override
    public int addSysLog(SysLog syslog) throws Exception {
        return  sysLogDao.addSysLog(syslog);
    }

    @Override
    public List<SysLog> queryAllSysLog() throws Exception {
        return sysLogDao.queryAllSysLog();
    }

}

