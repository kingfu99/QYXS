package com.etc.dao;


import com.etc.entity.Category;
import com.etc.entity.Goods;
import com.etc.vo.GoodsSearchVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class GoodsDAOTest {
    @Autowired
    private GoodsDAO goodsDAO;

    @Test
    public void fabuTest() {
        Goods goods = new Goods();
        Category category = new Category();
        category.setCid(1);
        goods.setCategory(category);
        goods.setGgId(2);
        goods.setgGg("斤");
        goods.setgName("羊肉");
        goods.setgPrice(40.0);
        goods.setgBz("好吃又便宜");
        goods.setgImg("2.jsp");
        goodsDAO.fabu(goods);
    }

    @Test
    public void searchTest() {
        GoodsSearchVO searchVO = new GoodsSearchVO();
//        searchVO.setName("果");

        PageHelper.startPage(2, 10);
        List<Goods> list = goodsDAO.search(searchVO);

        PageInfo<Goods> pageInfo = new PageInfo<>(list);
        System.out.println(pageInfo.getList());
        for (Goods goods : list) {
            System.out.println(goods);
        }
    }

    @Test
    public void deleteTest() {
        goodsDAO.delete(169);
    }

    @Test
    public void searchByIdTest() {
        Goods goods = goodsDAO.searchById(1);
        System.out.println(goods);
    }

    @Test
    public  void  updateTest(){
        Goods goods = new Goods();
        Category category = new Category();
        category.setCid(1);
        goods.setCategory(category);
        goods.setGgId(15);
        goods.setgGg("ge");
        goods.setgName("核桃");
        goods.setgPrice(60.0);
        goods.setgBz("。。。。");
        goods.setgImg("5.jsp");
        goodsDAO.update(goods);
    }
}
