package com.etc.service;

import com.etc.entity.SysLog;

import java.util.List;

public interface ISysLogService {

    public  int addSysLog(SysLog syslog) throws Exception;

    List<SysLog> queryAllSysLog() throws Exception;
}
