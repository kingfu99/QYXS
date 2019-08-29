package com.etc.vo;


import com.etc.entity.Goods;

import com.etc.entity.Order;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class DetailVO {
    private Integer detailId;
    private Order order;
    private Goods goods;
    private Double goodsPrice;
    private Integer detailNum;
    private Double detailMoney;

}
