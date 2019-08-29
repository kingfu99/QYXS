package com.etc.converter;

import com.etc.entity.Customer;
import com.etc.vo.CustomerVO;

public class CustomerConverter {
    public  static Customer conver(CustomerVO customerVO){
        Customer customer = new Customer();
        customer.setCusName(customerVO.getTitle());
        customer.setCusTel(customerVO.getPhone());
        customer.setCusEmail(customerVO.getEmail());
        customer.setCusAdd1(customerVO.getProvid());
        customer.setCusAdd2(customerVO.getCityid());
        customer.setCusPo(customerVO.getRealName());
        customer.setCusBz(customerVO.getDesc());
        return customer;
    }
    public  static Customer conver1(CustomerVO customerVO){
        Customer customer = new Customer();
        customer.setCusId(customerVO.getIdentity());
        customer.setCusName(customerVO.getTitle());
        customer.setCusTel(customerVO.getPhone());
        customer.setCusEmail(customerVO.getEmail());
        customer.setCusAdd1(customerVO.getProvid());
        customer.setCusAdd2(customerVO.getCityid());
        customer.setCusPo(customerVO.getRealName());
        customer.setCusBz(customerVO.getDesc());
        return customer;
    }

}
