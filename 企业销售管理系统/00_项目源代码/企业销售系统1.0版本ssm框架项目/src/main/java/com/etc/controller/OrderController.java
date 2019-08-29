package com.etc.controller;


import com.etc.common.Constant;
import com.etc.converter.OrderConverter;
import com.etc.entity.Order;
import com.etc.service.OrderService;
import com.etc.vo.OrderVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;


    @RequestMapping("/add")
    public String add(OrderVO orderVO){
        Order order =OrderConverter.conver(orderVO);
      orderService.add(order);
        return "redirect:/order/search";
    }

    @RequestMapping("/search")
    public String search(@ModelAttribute("pa") OrderVO orderVO, Integer pageNum, Model model){
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum, Constant.PAGE_SIZE2);
        PageInfo<Order> pageInfo = new PageInfo<>(orderService.search(orderVO));
        model.addAttribute("pageInfo",pageInfo);
        return "order";
    }

    @RequestMapping("/searchById")
    public String searchById(Integer id,Model model){
        Order order =orderService.searchById(id);
        model.addAttribute("order",order);
        return "detail_add";
    }

    @RequestMapping("/delete")
    public String deleteById(Integer id){
        orderService.delete(id);
        return "redirect:/order/search";
    }

}
