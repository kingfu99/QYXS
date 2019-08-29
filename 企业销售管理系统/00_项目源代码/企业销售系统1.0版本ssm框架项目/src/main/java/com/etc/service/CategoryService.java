package com.etc.service;

import com.etc.dao.CategoryDAO;
import com.etc.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {
    @Autowired
    private CategoryDAO categoryDAO;

    public void add(Category category){
        categoryDAO.add(category);
    }

    public List<Category> search(Category category){
        return categoryDAO.search(category);
    }

    public void delete(Integer cid){
        categoryDAO.delete(cid);
    }

    public Category searchById(Integer cid){
        return categoryDAO.searchById(cid);
    }

    public void update(Category category){
        categoryDAO.update(category);
    }
}
