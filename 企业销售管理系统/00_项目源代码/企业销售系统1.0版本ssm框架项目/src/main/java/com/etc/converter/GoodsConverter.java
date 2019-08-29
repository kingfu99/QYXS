package com.etc.converter;

import com.etc.entity.Category;
import com.etc.entity.Goods;
import com.etc.vo.GoodsVO;

public class GoodsConverter {
        public static Goods conver(GoodsVO goodsVO, String img, Category category){
            Goods goods=new Goods();
            goods.setgId(goodsVO.getGid());
            goods.setgName(goodsVO.getGname());
            goods.setgPrice(goodsVO.getGprice());
            goods.setgGg(goodsVO.getGgg());
            goods.setgBz(goodsVO.getBz());
            goods.setgImg(img);
            goods.setCategory(category);
            return goods;
        }
}
