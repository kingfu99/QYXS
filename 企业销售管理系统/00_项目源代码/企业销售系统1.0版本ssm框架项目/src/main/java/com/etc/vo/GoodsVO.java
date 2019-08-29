package com.etc.vo;

import com.etc.entity.Category;
import org.springframework.web.multipart.MultipartFile;

public class GoodsVO {
    private  Integer gid;
    private  Integer ggid;
    private  String gname;
    private Double gprice;
    private MultipartFile gimg;
    private String ggg;
    private String bz;

    @Override
    public String toString() {
        return "GoodsVO{" +
                "gid=" + gid +
                ", ggid=" + ggid +
                ", gname='" + gname + '\'' +
                ", gprice=" + gprice +
                ", gimg=" + gimg +
                ", ggg='" + ggg + '\'' +
                ", bz='" + bz + '\'' +
                '}';
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public Integer getGgid() {
        return ggid;
    }

    public void setGgid(Integer ggid) {
        this.ggid = ggid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Double getGprice() {
        return gprice;
    }

    public void setGprice(Double gprice) {
        this.gprice = gprice;
    }

    public MultipartFile getGimg() {
        return gimg;
    }

    public void setGimg(MultipartFile gimg) {
        this.gimg = gimg;
    }

    public String getGgg() {
        return ggg;
    }

    public void setGgg(String ggg) {
        this.ggg = ggg;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }
}
