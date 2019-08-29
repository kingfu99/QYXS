package com.etc.vo;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerVO {
    private Integer identity;
    private String title;
    private String phone;
    private String email;
    private String provid;
    private String cityid;
    private String realName;
    private String desc;

}
