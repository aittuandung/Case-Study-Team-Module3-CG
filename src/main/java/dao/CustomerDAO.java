package dao;

import connection.Connect_MySQL;
import model.Apartment;
import model.Customer;
import model.Sector;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements CRUD<Customer> {
    Connect_MySQL connect_mySQL = new Connect_MySQL();


    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (userName, passWord, fullName, birthDay, idCard, homeTown, phoneNumber, email, wallet) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_CUSTOMER_BY_USERNAME = "select * from customer where userName =?";

    private static final String SELECT_ALL_CUSTOMER = "select * from customer where userName like concat('%',?,'%')";


    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    @Override
    public void insert(Customer customer) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement.setString(1, customer.getUserName());
            preparedStatement.setString(2, customer.getPassWord());
            preparedStatement.setString(3, customer.getFullName());
            preparedStatement.setString(4, customer.getBirthDay());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getHomeTown());
            preparedStatement.setString(7, customer.getPhoneNumber());
            preparedStatement.setString(8, customer.getEmail());
            preparedStatement.setDouble(9, customer.getWallet());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Customer select(int idCH, String userName) {
        Customer customer = null;
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_USERNAME);) {
            preparedStatement.setString(1, userName);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String passWord = rs.getString("passWord");
                String fullName = rs.getString("fullName");
                String birthDay = rs.getString("birthDay");
                String idCard = rs.getString("idCard");
                String homeTown = rs.getString("homeTown");
                String phoneNumber = rs.getString("'phoneNumber");
                String email = rs.getString("email");
                double wallet = rs.getDouble("wallet");
                customer = new Customer(userName, passWord, fullName, birthDay, idCard, homeTown, phoneNumber, email, wallet);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customer;
    }

    @Override
    public List<Customer> selectAll(String userName) {
        List<Customer> customers = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);) {
            preparedStatement.setString(1, userName);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String userNameCustomer = resultSet.getString("userName");
                String passWord = resultSet.getString("passWord");
                String fullName = resultSet.getString("fullName");
                String birthDay = resultSet.getString("birthDay");
                String idCard = resultSet.getString("idCard");
                String homeTown = resultSet.getString("homeTown");
                String phoneNumber = resultSet.getString("phoneNumber");
                String email = resultSet.getString("email");
                double wallet = resultSet.getDouble("wallet");
//                Apartment apartment = apartmentDAO.select(resultSet.getInt("idCH"), "");

                customers.add(new Customer(userNameCustomer, passWord, fullName, birthDay, idCard, homeTown, phoneNumber, email, wallet));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean delete(int id, String name) throws SQLException {
        return false;
    }

    @Override
    public boolean update(Customer customer) throws SQLException {
        return false;
    }
}
