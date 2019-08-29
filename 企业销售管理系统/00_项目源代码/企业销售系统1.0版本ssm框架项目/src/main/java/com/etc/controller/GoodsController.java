package com.etc.controller;

import com.etc.common.Constant;
import com.etc.converter.GoodsConverter;
import com.etc.entity.Category;
import com.etc.entity.Goods;
import com.etc.service.CategoryService;
import com.etc.service.GoodsService;
import com.etc.vo.GoodsSearchVO;
import com.etc.vo.GoodsVO;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {

    private static final String UPLOAD_DIR = "D:\\tmp\\企业销售系统1.0版本\\images\\";

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/images")
    public String imgages(String imgName, HttpServletResponse response) throws IOException {
        IOUtils.copy(new FileInputStream(UPLOAD_DIR + imgName), response.getOutputStream());
        return null;
    }

    @RequestMapping("/add")
    public String add(Model model) {
        List<Category> category = categoryService.search(null);
        model.addAttribute("category", category);
        return "goods_add";
    }

    @RequestMapping("/fabu")
    public String fabu(GoodsVO goodsVO) throws IOException {
        System.out.println(goodsVO);


        goodsVO.getGimg().transferTo(new File(UPLOAD_DIR + goodsVO.getGimg().getOriginalFilename()));
        //这个得从分类的session中获取
        Category category = new Category();
        category.setCid(1);
        Goods goods = GoodsConverter.conver(goodsVO, goodsVO.getGimg().getOriginalFilename(), category);

        goodsService.fabu(goods);
        return "redirect:/goods/search";
    }

    @RequestMapping("/search")
    public String search(@ModelAttribute("vo") GoodsSearchVO goodsSearchVO, Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }

        PageHelper.startPage(pageNum, Constant.PAGE_SIZE);
        PageInfo<Goods> pageInfo = new PageInfo<>(goodsService.search(goodsSearchVO));
        model.addAttribute("pageInfo", pageInfo);
        return "goods_list";
    }

    @RequestMapping("/delete")
    public String delete(Integer gid) {
        goodsService.delete(gid);
        return "redirect:/goods/search";
    }

    @RequestMapping("/showone")
    public String showOne(Integer gid, Model model) {
        Goods goods = goodsService.searchById(gid);
        model.addAttribute("goods", goods);
        return "goods_update";
    }

    @RequestMapping("/update")
    public String update(GoodsVO goodsVO, HttpSession session) throws IOException {
        String imgName = null;
        if (goodsVO.getGimg() != null) {
            imgName = goodsVO.getGimg().getOriginalFilename();
            if (!StringUtils.isEmpty(imgName)) {
                String names[] = imgName.split("\\.");
                imgName = System.currentTimeMillis() + "." + names[1];
                File file = new File(UPLOAD_DIR + imgName);
                if (file.exists()) {
                    file.delete();
                }
                goodsVO.getGimg().transferTo(file);
            }
        }
        //从类别拿过来的id
        Category category = new Category();
        category.setCid(1);
        Goods goods = GoodsConverter.conver(goodsVO, imgName, category);
        System.out.println(goods);
        goodsService.update(goods);

        return "redirect:/goods/search";
    }

}
