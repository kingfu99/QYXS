package com.etc.entity;


public class Goods {
    private Integer gId;
    private  Integer ggId;
    private  String gName;
    private Double gPrice;
    private String gImg;
    private String gGg;
    private String gBz;
    private Category category;

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public Integer getGgId() {
        return ggId;
    }

    public void setGgId(Integer ggId) {
        this.ggId = ggId;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public Double getgPrice() {
        return gPrice;
    }

    public void setgPrice(Double gPrice) {
        this.gPrice = gPrice;
    }

    public String getgImg() {
        return gImg;
    }

    public void setgImg(String gImg) {
        this.gImg = gImg;
    }

    public String getgGg() {
        return gGg;
    }

    public void setgGg(String gGg) {
        this.gGg = gGg;
    }

    public String getgBz() {
        return gBz;
    }

    public void setgBz(String gBz) {
        this.gBz = gBz;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gId=" + gId +
                ", ggId=" + ggId +
                ", gName='" + gName + '\'' +
                ", gPrice=" + gPrice +
                ", gImg='" + gImg + '\'' +
                ", gGg='" + gGg + '\'' +
                ", gBz='" + gBz + '\'' +
                ", category=" + category +
                '}';
    }

    public Goods(Integer gId, Integer ggId, String gName, Double gPrice, String gImg, String gGg, String gBz, Category category) {
        this.gId = gId;
        this.ggId = ggId;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gImg = gImg;
        this.gGg = gGg;
        this.gBz = gBz;
        this.category = category;
    }

    public Goods(Integer ggId, String gName, Double gPrice, String gImg, String gGg, String gBz, Category category) {
        this.ggId = ggId;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gImg = gImg;
        this.gGg = gGg;
        this.gBz = gBz;
        this.category = category;
    }

    public Goods() {
    }
}
