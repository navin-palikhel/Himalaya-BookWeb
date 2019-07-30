package com.java4.Services;

import com.java4.User.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ${Kshitish_Pokharel} on 7/21/2017.
 */
public class UserDao {
    public static boolean registerUser(user user2) {
        boolean ret=false;

        Connection connection= DbConnection.getConnection();

        if(connection != null ){

            String sql="INSERT into bookweb.userinfo(username,email,address, password,phone)"+
                    "VALUES(?,?,?,?,?)";
            String sqlcheck="SELECT * from bookweb.userinfo where username=?";
            try{

                    PreparedStatement ps=connection.prepareStatement(sqlcheck);
                    ps.setString(1,user2.getUsername());
                    ResultSet resultSet=ps.executeQuery();
                    if(!(resultSet.next())) {
                        ps=connection.prepareStatement(sql);
                        ps.setString(1, user2.getUsername());
                        ps.setString(2, user2.getEmail());
                        ps.setString(3, user2.getAddress());
                        ps.setString(4, user2.getPassword());
                        ps.setString(5, user2.getPhone());

                        int res = ps.executeUpdate(); //returns no of rows

                        if (res != 0) {
                            ret = true;
                        }
                    }

            }catch(SQLException e){
                e.printStackTrace();
            }
        }

        return ret;

    }
}
