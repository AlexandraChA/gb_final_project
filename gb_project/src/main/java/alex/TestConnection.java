package alex;

import java.io.IOError;
import java.io.IOException;
import java.sql.*;

public class TestConnection {
    public static final String url = "jdbc:mysql://localhost:3306/final_project";
    public static final String user = "root";
    public static final String password = "Alex12799";
    public static Statement statement;
    public static Connection connection;

    static {
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException se) {
            se.printStackTrace();
            throw new RuntimeException();
        }
    }

    static {
        try {
            statement = connection.createStatement();
        } catch (SQLException se) {
            se.printStackTrace();
            throw new RuntimeException();
        }
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        ResultSet resultSet = statement.executeQuery("select * from cats");
        while (resultSet.next()) {
            System.out.println(resultSet.getString(2));
        }
    }
}
