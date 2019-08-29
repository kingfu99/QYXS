package com.etc.service;


import com.etc.dao.OrderDAO;
import com.etc.entity.Order;
import com.etc.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderDAO orderDAO;

public List<Order> search(OrderVO orderVO){
      return   orderDAO.search(orderVO);

}

    public void add(Order order){
    orderDAO.add(order);
    }
    public Order searchById(Integer oId){
    return orderDAO.searchById(oId);
    }
    public void delete(Integer id){
    orderDAO.delete(id);
    }
}
