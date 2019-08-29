package com.etc.vo;

public class UserVO {
    private String name;
    private  String password;

    public UserVO() {
    }

    public UserVO(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserVO{" +
                "name='" + name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
