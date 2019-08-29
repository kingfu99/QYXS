package com.etc.dao;

import com.etc.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDAO {

    User login(@Param("name") String name,@Param("password") String password);
}
