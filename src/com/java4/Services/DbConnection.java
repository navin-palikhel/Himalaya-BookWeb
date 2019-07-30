package com.java4.Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by ${Kshitish_Pokharel} on 7/21/2017.
 */
public class DbConnection {
    private static Connection connection;

    public static Connection getConnection() {
    String url = "jdbc:mysql://localhost:3306/Bookweb";
    String user = "root";
    String password = "1234";

        if(connection ==null)

    {
        //load Driver class
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);
            return connection;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    } else

    {
        return connection;
    }
        return null;
}
}
