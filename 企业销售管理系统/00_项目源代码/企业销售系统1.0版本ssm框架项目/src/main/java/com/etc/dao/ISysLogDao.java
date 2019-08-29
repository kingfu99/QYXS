package com.etc.dao;

import com.etc.entity.SysLog;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ISysLogDao {
    @Insert("insert into t_aop(`u_id`,`aop_name`,`aop_time`,`aop_ip`,`aop_url`,`aop_long`,`aop_method`)values(#{uId},#{aopName},#{aopTime},#{aopIp},#{aopUrl},#{aopLong},#{aopMethod})")
    int addSysLog(SysLog syslog) throws Exception;



    @Select("select * from t_aop")
    List<SysLog> queryAllSysLog() throws Exception;
}
