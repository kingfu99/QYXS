package com.etc.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SysLog {
    private Integer aopId;
    private Integer uId;
    private String aopName;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Timestamp aopTime;
    private String aopIp;
    private String aopUrl;
    private Long  aopLong;
    private String aopMethod;
}
