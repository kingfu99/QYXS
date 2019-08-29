package com.etc.vo;

import com.etc.entity.Category;

public class GoodsSearchVO {
    private String name;
    private Category category;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "GoodsSearchVO{" +
                "name='" + name + '\'' +
                ", category=" + category +
                '}';
    }

    public GoodsSearchVO(String name, Category category) {
        this.name = name;
        this.category = category;
    }

    public GoodsSearchVO() {
    }
}
