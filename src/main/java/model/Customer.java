package model;

public class Customer {
    int idKH ;
    String fullName;
    String birthDay;
    String idCart;
    String homeTown;
    String phoneNumber;
    double wallet;

    public Customer() {
    }

    public Customer(int idKH, String fullName, String birthDay, String idCart, String homeTown, String phoneNumber, double wallet) {
        this.idKH = idKH;
        this.fullName = fullName;
        this.birthDay = birthDay;
        this.idCart = idCart;
        this.homeTown = homeTown;
        this.phoneNumber = phoneNumber;
        this.wallet = wallet;
    }

    public int getIdKH() {
        return idKH;
    }

    public void setIdKH(int idKH) {
        this.idKH = idKH;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getIdCart() {
        return idCart;
    }

    public void setIdCart(String idCart) {
        this.idCart = idCart;
    }

    public String getHomeTown() {
        return homeTown;
    }

    public void setHomeTown(String homeTown) {
        this.homeTown = homeTown;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public double getWallet() {
        return wallet;
    }

    public void setWallet(double wallet) {
        this.wallet = wallet;
    }
}
