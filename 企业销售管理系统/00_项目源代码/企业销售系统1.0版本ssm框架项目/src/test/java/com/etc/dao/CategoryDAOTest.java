package com.etc.dao;

import com.etc.entity.Category;
import com.etc.entity.Goods;
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
public class CategoryDAOTest {
    @Autowired
    private CategoryDAO categoryDAO;
    @Autowired
    private DetailDAO detailDAO;
    @Test
    public  void tsTest(){
        detailDAO.queryForList();
    }

    @Test
    public void addTest(){
        Category category=new Category();
        category.setCname("水果");
        categoryDAO.add(category);
    }
    @Test
    public void  searchTest(){
        Category category=new Category();

        PageHelper.startPage(2, 10);
        List<Category> list=categoryDAO.search(category);
        PageInfo<Category> pageInfo = new PageInfo<>(list);
        System.out.println(pageInfo);
        for(Category c:list){
            System.out.println(c);
        }
    }

    @Test
    public void deleteTest(){
        categoryDAO.delete(17);
    }

    @Test
    public void searchByIdTest(){
        Category category=categoryDAO.searchById(2);
        System.out.println(category);
    }

    @Test
    public void  updateTest(){
        Category category=new Category();
        category.setCname("水果");
        category.setCid(8);
        categoryDAO.update(category);
    }
    @Test
    public void search(){

    }
}
