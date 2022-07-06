package model;

import java.util.Date;

public class Apartment {
    int idCH;
    String address;
    double price;
    double area;
    String picture;
    String status;
    String description;
    Date datePost;
    String classify;
    public Apartment() {
    }

    public Apartment(int idCH, String address, double price, double area, String picture, String status, String description, Date datePost, String classify) {
        this.idCH = idCH;
        this.address = address;
        this.price = price;
        this.area = area;
        this.picture = picture;
        this.status = status;
        this.description = description;
        this.datePost = datePost;
        this.classify = classify;
    }

    public int getIdCH() {
        return idCH;
    }

    public void setIdCH(int idCH) {
        this.idCH = idCH;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatePost() {
        return datePost;
    }

    public void setDatePost(Date datePost) {
        this.datePost = datePost;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }
}
