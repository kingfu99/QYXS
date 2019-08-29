package com.etc.dao;

import com.etc.entity.Goods;
import com.etc.vo.GoodsSearchVO;

import java.util.List;

public interface GoodsDAO {

        void fabu(Goods goods);

        List<Goods> search(GoodsSearchVO goodsSearchVO);

        void delete(Integer gid);

        Goods searchById(Integer gid);

        void update(Goods goods);
}
