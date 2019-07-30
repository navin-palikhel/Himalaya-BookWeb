package com.java4.Services;

import com.java4.User.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ${Kshitish_Pokharel} on 7/21/2017.
 */
public class Validation {
    public static boolean validate(user user1){


        Connection connection=DbConnection.getConnection();

        if(connection!=null){

            String sql="SELECT * from bookweb.userinfo where username=? and password=?";
            try {
                PreparedStatement ps=connection.prepareStatement(sql);
                ps.setString(1,user1.getUsername());
                ps.setString(2,user1.getPassword());

                ResultSet resultSet=ps.executeQuery();

                if (resultSet.next()){
                    return true; //valid user
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

         }
        return false;
    }
}
