package com.etc.service;

import com.etc.dao.DetailDAO;
import com.etc.entity.Detail;

import com.etc.entity.Order;
import com.etc.entity.Ts;
import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Map;


@Service
public class DetailService {
    @Autowired
    private DetailDAO detailDAO;

   public List<Detail> searchById(Integer id){
 return  detailDAO.searchById(id) ;
    }
public void fabu(Detail detail){
       detailDAO.fabu(detail);
}



    public void deleteById(Integer detId){

        detailDAO.deleteById(detId);
    }
    public List<Ts> queryForList(){
       return detailDAO.queryForList();
    }
}

