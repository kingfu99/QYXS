package com.etc.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
private Integer cusId;
private String cusName;
private String cusTel;
private String cusEmail;
private String cusAdd1;
private String cusAdd2;
private String cusPo;
private String cusBz;
}
