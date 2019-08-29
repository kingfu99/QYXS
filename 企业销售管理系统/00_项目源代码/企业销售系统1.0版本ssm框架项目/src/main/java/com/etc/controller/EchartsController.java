package com.etc.controller;

import com.etc.entity.Ts;
import com.etc.service.DetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/index")
public class EchartsController {

        @Autowired
        private DetailService detailService;

        @RequestMapping("/toIndex")
        public ModelAndView toIndex() {
            ModelAndView mav = new ModelAndView("index");
            return mav;
        }

        @RequestMapping("/queryForList")
        public @ResponseBody
        List<Ts> queryForList() {
            return detailService.queryForList();
        }

}