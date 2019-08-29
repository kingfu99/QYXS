package com.etc.controller;


import com.etc.common.Constant;
import com.etc.entity.SysLog;
import com.etc.service.ISysLogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/sysLog")
public class SysLogController {

    @Autowired
    private ISysLogService sysLogService;

    @RequestMapping("/findAll")
    public ModelAndView findAll(Integer pageNum) throws Exception {
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum, Constant.PAGE_SIZE1);
        ModelAndView mv=new ModelAndView();
        PageInfo<SysLog> pageInfo = new PageInfo<>(sysLogService.queryAllSysLog());
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("syslog_list");
        return mv;
    }
}



