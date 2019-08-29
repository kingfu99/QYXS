package com.etc.dao;

import com.etc.entity.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryDAO {
    void add(Category category);

    List<Category> search(Category category);

    void  delete(Integer cid);

    Category searchById(Integer cid);

    void update(Category category);

}
