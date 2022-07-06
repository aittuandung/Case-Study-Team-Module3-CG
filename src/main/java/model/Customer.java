package model;

public class Customer {
    int idKH ;
    String fullName;
    String birthDay;
    String idCard;
    String homeTown;
    String phoneNumber;
    String email;
    double wallet;

    public Customer() {
    }

    public Customer(int idKH, String fullName, String birthDay, String idCard, String homeTown, String phoneNumber, String email, double wallet) {
        this.idKH = idKH;
        this.fullName = fullName;
        this.birthDay = birthDay;
        this.idCard = idCard;
        this.homeTown = homeTown;
        this.phoneNumber = phoneNumber;
        this.email = email;
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

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getWallet() {
        return wallet;
    }

    public void setWallet(double wallet) {
        this.wallet = wallet;
    }
}
