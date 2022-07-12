package model;

public class Wallet {
    private String userName;
    private int money;

    public Wallet(String userName, int money) {
        this.userName = userName;
        this.money = money;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }
}
