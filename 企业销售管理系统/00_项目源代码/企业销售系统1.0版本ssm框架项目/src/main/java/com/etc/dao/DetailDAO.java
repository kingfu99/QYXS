package com.etc.dao;

import com.etc.entity.Detail;
import com.etc.entity.Ts;


import java.util.List;
import java.util.Map;

public interface DetailDAO {
  List<Detail> searchById(Integer id);
  void fabu(Detail detail);
  void deleteById(Integer detId);
 List<Ts> queryForList();

}
