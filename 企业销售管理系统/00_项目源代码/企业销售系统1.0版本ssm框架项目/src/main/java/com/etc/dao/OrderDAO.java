package com.etc.dao;


import com.etc.entity.Order;
import com.etc.vo.OrderVO;

import java.util.List;

public interface OrderDAO {
    void delete(Integer id);
    List<Order> search(OrderVO orderVO);
    void add(Order order);
    Order searchById(Integer oId);

}
