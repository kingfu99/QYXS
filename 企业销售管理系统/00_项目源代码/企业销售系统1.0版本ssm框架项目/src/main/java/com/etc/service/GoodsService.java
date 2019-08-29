package com.etc.service;


import com.etc.dao.GoodsDAO;
import com.etc.entity.Goods;
import com.etc.vo.GoodsSearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsService {

    @Autowired
    private GoodsDAO goodsDAO;

    public void fabu(Goods goods) {
        goodsDAO.fabu(goods);
    }

    public List<Goods> search(GoodsSearchVO goodsSearchVO) {
        return goodsDAO.search(goodsSearchVO);
    }

    public void delete(Integer gid){
        goodsDAO.delete(gid);
    }

    public Goods searchById(Integer gid){
       return goodsDAO.searchById(gid);
    }

    public void update(Goods goods){
        goodsDAO.update(goods);
    }
}
