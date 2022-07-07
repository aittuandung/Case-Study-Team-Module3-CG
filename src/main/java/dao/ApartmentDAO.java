package dao;

import connection.Connect_MySQL;
import model.Apartment;
import model.Customer;
import model.Sector;

import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.sql.DriverManager.getConnection;

public class ApartmentDAO implements CRUD<Apartment> {
    Connect_MySQL connect_mySQL = new Connect_MySQL();

    CustomerDAO customerDAO = new CustomerDAO();

    SectorDAO sectorDAO = new SectorDAO();


    private static final String SEARCH_APARTMENT_SQL = "select * from case_study_md3.apartment as a join case_study_md3.sector as s on s.idKV = a.idKV where classify = ? and price = ? and area = ? and sector = ? ";
    private static final String INSERT_APARTMENT_SQL = "INSERT INTO apartment (idCH, address, price, area, picture, status, description, datePost, classify, idKV) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    private static final String SELECT_APARTMENT_BY_ID = "select * from apartment where idCH =?";

    private static final String SELECT_ALL_APARTMENT = "select * from case_study_md3.apartment where classify like concat('%',?,'%')";

    private static final String DELETE_APARTMENT_SQL = "delete from apartment where idCH = ?;";

    private static final String UPDATE_USERS_APARTMENT = "update apartment set address = ?,price= ?, area =?,picture= ?,status= ?,description= ?,datePost= ?,classify= ? where id > 0;";

    private static final String SELECT_APARTMENT_BY_PRICE = "select * from apartment where price=?";

    private static final String SELECT_APARTMENT_BY_SECTOR = "select * from sector where province= ?";

    Connection connection = Connect_MySQL.getConnection();
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
    public void insert(Apartment apartment) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_APARTMENT_SQL)) {
            preparedStatement.setInt(1, apartment.getIdCH());
            preparedStatement.setString(2, apartment.getAddress());
            preparedStatement.setDouble(3, apartment.getPrice());
            preparedStatement.setDouble(4, apartment.getArea());
            preparedStatement.setString(5, apartment.getPicture());
            preparedStatement.setString(6, apartment.getStatus());
            preparedStatement.setString(7, apartment.getDescription());
            preparedStatement.setDate(8, apartment.getDatePost());
            preparedStatement.setString(9, apartment.getClassify());
            preparedStatement.setInt(10, apartment.getSector().getIdKV());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Apartment select(int idCH, String userName) {
        Apartment apartment = null;
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_ID);) {
            preparedStatement.setInt(1, idCH);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String address = rs.getString("name");
                double price = rs.getDouble("email");
                double area = rs.getDouble("email");
                String picture = rs.getString("name");
                String status = rs.getString("name");
                String description = rs.getString("name");
                Date datePost = rs.getDate("'datePost");
                String classify = rs.getString("name");
                Customer customer = customerDAO.select(0, rs.getString("userName"));
                Sector sector = sectorDAO.select(rs.getInt("idKV"), "");
                apartment = new Apartment(idCH, address, price, area, picture, status, description, datePost, classify, customer, sector);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return apartment;
    }

    @Override
    public List selectAll(String classify) {
        List<Apartment> apartments = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_APARTMENT)) {
            preparedStatement.setString(9, classify);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idKV = resultSet.getInt("idCH");
                String address = resultSet.getString("address");
                double price = resultSet.getDouble("price");
                double area = resultSet.getDouble("area");
                String picture = resultSet.getString("picture");
                String status = resultSet.getString("status");
                String description = resultSet.getString("description");
                Date datePost = resultSet.getDate("datePost");
                String classifyApartment = resultSet.getString("classify");
                Customer customer = customerDAO.select(0, resultSet.getString("userName"));
                Sector sector = sectorDAO.select(resultSet.getInt("idKV"), "");

                apartments.add(new Apartment(idKV, address, price, area, picture, status, description, datePost, classifyApartment, customer, sector));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return apartments;
    }

    @Override
    public boolean delete(int idCH, String name) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_APARTMENT_SQL)) {
            preparedStatement.setInt(1, idCH);
            return preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean update(Apartment apartment) throws SQLException {
        try (Connection connection = connect_mySQL.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USERS_APARTMENT);
            preparedStatement.setString(1, apartment.getAddress());
            preparedStatement.setDouble(2, apartment.getPrice());
            preparedStatement.setDouble(3, apartment.getArea());
            preparedStatement.setString(4, apartment.getPicture());
            preparedStatement.setString(5, apartment.getStatus());
            preparedStatement.setString(6, apartment.getDescription());
            preparedStatement.setDate(7, apartment.getDatePost());
            preparedStatement.setString(8, apartment.getClassify());
            return preparedStatement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    public List select_apartmentByPrice(Double price){
        List<Apartment> apartments = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_PRICE)) {
            preparedStatement.setDouble(3, price);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idKV = resultSet.getInt("idCH");
                String address = resultSet.getString("address");
                double price1 = resultSet.getDouble("price");
                double area = resultSet.getDouble("area");
                String picture = resultSet.getString("picture");
                String status = resultSet.getString("status");
                String description = resultSet.getString("description");
                Date datePost = resultSet.getDate("datePost");
                String classifyApartment = resultSet.getString("classify");
                Customer customer = customerDAO.select(0, resultSet.getString("userName"));
                Sector sector = sectorDAO.select(resultSet.getInt("idKV"), "");

                apartments.add(new Apartment(idKV, address, price1, area, picture, status, description, datePost, classifyApartment, customer, sector));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return apartments;
    }

    public List select_apartmentByProvince(String province ){
        List<Apartment> apartments = new ArrayList<>();
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_SECTOR)) {
            preparedStatement.setString(11, province);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idKV = resultSet.getInt("idCH");
                String address = resultSet.getString("address");
                double price1 = resultSet.getDouble("price");
                double area = resultSet.getDouble("area");
                String picture = resultSet.getString("picture");
                String status = resultSet.getString("status");
                String description = resultSet.getString("description");
                Date datePost = resultSet.getDate("datePost");
                String classifyApartment = resultSet.getString("classify");
                Customer customer = customerDAO.select(0, resultSet.getString("userName"));
                Sector sector = sectorDAO.select(resultSet.getInt("idKV"), "");

                apartments.add(new Apartment(idKV, address, price1, area, picture, status, description, datePost, classifyApartment, customer, sector));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return apartments;
    }



}
