package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.Connect_MySQL;
import model.Customer;

public class LoginAndRegistrationDao {
    String addAccount="insert into (userName,email,phoneNumber,passWord) value (?,?,?,?)";
    String loginAccount= "select userName,passWord from Customer where userName=? and passWord=? ";
    public void addAccount(String userName,String email,String phoneNumber,String pasWord){
        try (Connection connection = Connect_MySQL.getConnect()){
            PreparedStatement statement=connection.prepareStatement(addAccount);
            statement.setString(1,userName);
            statement.setString(2,email);
            statement.setString(3,phoneNumber);
            statement.setString(4,pasWord);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public boolean getAllCustomer(String userName,String passWord){
        try(Connection connection= Connect_MySQL.getConnect()) {
            PreparedStatement statement=connection.prepareStatement(loginAccount);
            ResultSet resultSet=statement.executeQuery();
            resultSet.next();
            String name=resultSet.getString("userName");
            String pass=resultSet.getString("passWord");
            if (name!=null){
                return true;
            } return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
