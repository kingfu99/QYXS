package com.etc.dao;

import com.etc.entity.Customer;
import com.etc.vo.CustomerVO;

import java.util.List;

public interface CustomerDAO {
    void add(Customer customer);
    List<Customer>search(CustomerVO customerVO);
    void deleteById(Integer cusId);
    Customer searchById(Integer cusId);
    void update(Customer customer);
}
