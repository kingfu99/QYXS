package com.etc.converter;


import com.etc.entity.Order;
import com.etc.vo.OrderVO;

public class OrderConverter {
    public  static Order conver(OrderVO orderVO ){
        Order order = new Order();

        order.setOId(orderVO.getOrderid());
        order.setODate(orderVO.getODate());
        order.setCustomer(orderVO.getCustomer());
        return   order;
    }
}
