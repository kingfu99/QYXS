package com.etc.controller;

import com.etc.converter.DetailConverter;
import com.etc.entity.Detail;
import com.etc.entity.Order;
import com.etc.service.DetailService;
import com.etc.service.OrderService;
import com.etc.vo.DetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller

@RequestMapping("/detail")
public class DetailController {
    @Autowired
    private DetailService detailService;
    @Autowired
    private OrderService orderService;

    @RequestMapping("/searchById")
    public String searchById(Integer id, Model model){
        Order order =orderService.searchById(id);
        model.addAttribute("order",order);
        List<Detail> detail =detailService.searchById(id);
        model.addAttribute("detail",detail);
        return "detail";
    }
    @RequestMapping("/fabu")
    public String fabu( DetailVO detailVO){
        Detail detail = DetailConverter.conver(detailVO);
        detailService.fabu(detail);
        int id=detail.getOrder().getOId();
        return "redirect:/detail/searchById?id="+id;
    }


    @RequestMapping("/delete")
    public String deleteById(Integer id){
        detailService.deleteById(id);


        return "redirect:/order/search";
    }

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


}
