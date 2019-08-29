package com.etc.converter;

import com.etc.entity.Detail;

import com.etc.vo.DetailVO;


public class DetailConverter {
    public  static Detail conver(DetailVO detailVO ){
        Detail detail =new  Detail();

        detail.setDetMoney(detailVO.getDetailMoney());
        detail.setDetNum(detailVO.getDetailNum());
        detail.setGPrice(detailVO.getGoodsPrice());
      detail.setGoods(detailVO.getGoods());
      detail.setOrder(detailVO.getOrder());
        return  detail;
    }
}
