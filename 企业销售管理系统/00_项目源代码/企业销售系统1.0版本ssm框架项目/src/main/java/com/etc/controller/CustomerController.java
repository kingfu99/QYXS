package com.etc.controller;

import com.etc.common.Constant;
import com.etc.converter.CustomerConverter;
import com.etc.entity.Customer;
import com.etc.service.CustomerService;
import com.etc.vo.CustomerVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.IOException;


@Controller
@RequestMapping("/customer")
public class CustomerController {


    @Autowired
    private CustomerService customerService;


    @RequestMapping("/add")
    public String showAdd(){
        return "agent_add";
    }
    @RequestMapping("/fabu")
    public String add(CustomerVO customerVO) throws IOException {
        Customer customer = CustomerConverter.conver(customerVO);
        customerService.add(customer);

        return "redirect:/customer/search";
    }

    @RequestMapping("/search")
    public String search(@ModelAttribute("page") CustomerVO customerVO, Integer pageNum, Model model){
        if (pageNum==null){
            pageNum=1;
        }
        PageHelper.startPage(pageNum, Constant.PAGE_SIZE);
        PageInfo<Customer> pageInfo = new PageInfo<>(customerService.search(customerVO));
        model.addAttribute("pageInfo",pageInfo);
        return "agent_list1";
    }
    @RequestMapping("/searchById")
    public String searchById(Integer identity,Model model){
        Customer customer =customerService.searchById(identity);
        model.addAttribute("customer",customer);
        return "agent_upset";
    }
    @RequestMapping("/update")
    public String update(CustomerVO customerVO){
        Customer customer = CustomerConverter.conver1(customerVO);
        customerService.update(customer);
        return "redirect:/customer/search";
    }

    @RequestMapping("/delete")
    public String deleteById(Integer identity){
        customerService.deleteById(identity);

        return "redirect:/customer/search";
    }

/*    //地域的三级联动
    @ResponseBody
    @RequestMapping("/showArea")
    public List<Area> showArea(){
        return houseService.getAllProvince();
    }
    @ResponseBody
    @RequestMapping("/showCity")
    public List<Area> showCity(@RequestParam("pid") String pid){
        return houseService.getAllCity(Integer.parseInt(pid));
    }*/

}
