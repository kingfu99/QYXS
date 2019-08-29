package com.etc.controller;


import com.etc.common.Constant;
import com.etc.entity.Category;
import com.etc.service.CategoryService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/add")
    public String add(){
        return "goodsType_add";
    }
    @RequestMapping("/fabu")
    public String fabu(Category category){
        categoryService.add(category);
        return "redirect:/category/search";
    }
    @RequestMapping("/search")
    public String search(@ModelAttribute("vo1") Category category, Integer pageNum, Model model){
        if (pageNum==null){
            pageNum=1;
        }

        System.out.println("cbshd" + pageNum);

        PageHelper.startPage(pageNum, Constant.PAGE_SIZE);
        PageInfo<Category> pageInfo= new PageInfo<>(categoryService.search(category));
        model.addAttribute("pageInfo",pageInfo);
        return "goodsType_list";
    }

    @RequestMapping("/delete")
    public String delete(Integer cid){
        categoryService.delete(cid);
        return "redirect:/category/search";
    }

    @RequestMapping("/showone")
    public String searchById(Integer cid,Model model){
        Category category=categoryService.searchById(cid);
        model.addAttribute("category",category);
        return "goodsType_update";
    }

    @RequestMapping("/update")
    public String update(Category category){
        categoryService.update(category);
//        System.out.println(category);
        return "redirect:/category/search";
    }
}
