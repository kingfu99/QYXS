package com.etc.converter;

import com.etc.entity.User;
import com.etc.vo.UserVO;

public class UserConverter {
    public static User convert(UserVO userVO) {
        User user = new User();
        user.setUname(userVO.getName());
        user.setUpass(userVO.getPassword());
        return user;
    }
}
