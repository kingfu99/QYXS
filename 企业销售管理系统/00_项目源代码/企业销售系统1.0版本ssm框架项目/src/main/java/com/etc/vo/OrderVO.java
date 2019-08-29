package com.etc.vo;


import com.etc.entity.Customer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderVO {
    private Integer detailid;
    private Integer orderid;
    private Integer goodid;
    private Double goodprice;
    private Integer detNum;
    private Double detMoney;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date oDate;
    private Customer customer;

}
