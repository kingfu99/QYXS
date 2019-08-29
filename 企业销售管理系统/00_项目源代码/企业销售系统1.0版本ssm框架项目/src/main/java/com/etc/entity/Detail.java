package com.etc.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Detail {
    private Integer detId;
    private Order order;
    private Goods goods;
    private Double gPrice;
    private Integer detNum;
    private Double detMoney;
}
