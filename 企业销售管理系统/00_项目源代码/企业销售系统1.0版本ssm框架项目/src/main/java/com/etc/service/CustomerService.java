package com.etc.service;

import com.etc.dao.CustomerDAO;
import com.etc.entity.Customer;
import com.etc.vo.CustomerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    private CustomerDAO customerDao;
    public void add(Customer customer){
        customerDao.add(customer);
    }

    public List<Customer> search(CustomerVO customerVO){
        return customerDao.search(customerVO);
    }

    public void deleteById(Integer cusId){
        customerDao.deleteById(cusId);
    }
    public Customer searchById(Integer cusId){
        return customerDao.searchById(cusId);
    }
    public  void update(Customer customer){
        customerDao.update(customer);
    }

}
