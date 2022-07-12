package dao;
import connection.Connect_MySQL;
import model.Wallet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WalletDao {
    static List<Wallet> walletList;
    static Connect_MySQL connect_mySQL=new Connect_MySQL();
    private static String SELECT_WALLET= "select * from CASE_STUDY_MD3.wallet";
    private static String INSERT_WALLET="INSERT INTO CASE_STUDY_MD3.wallet VALUE(?,?)";
    public static List<Wallet> history() {
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_WALLET)) {
            ResultSet resultSet = preparedStatement.executeQuery();
           walletList=new ArrayList<>();
            while (resultSet.next()) {
                String username= resultSet.getString(1);
                int money=resultSet.getInt(2);
                walletList.add(new Wallet(username,money));
            }
            return walletList;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void addmoney(String userName,int monney){
        try (Connection connection = connect_mySQL.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_WALLET)) {
            preparedStatement.setString(1,userName);
            preparedStatement.setInt(2,monney);
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
