package alex;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Database implements Serializable {
    public static final String url = "jdbc:mysql://localhost:3306/final_project";
    public static final String user = "root";
    public static final String password = "Alex12799";

    public static  final String driver = "com.mysql.cj.jdbc.Driver";
    public static Statement statement;
    public static Connection connection;

    public static Connection getConnection() {
        Connection dbConnection = null;
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }

        try {
            dbConnection = DriverManager.getConnection(url, user, password);
            return dbConnection;
        } catch (SQLException e) {
            System.out.println(e.getMessage()+" ,unlucky BRO :(");
        }
        return dbConnection;
    }
}
