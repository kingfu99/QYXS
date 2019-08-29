package com.etc.converter;

import com.etc.entity.Category;
import com.etc.entity.Goods;
import com.etc.vo.GoodsSearchVO;

public class GoodsSearchVOConterver {
    public Goods convert(GoodsSearchVO goodsSearchVO, Category category){
        Goods goods=new Goods();
        goods.setgName(goodsSearchVO.getName());
        goods.setCategory(category);
        return goods;
    }
}
