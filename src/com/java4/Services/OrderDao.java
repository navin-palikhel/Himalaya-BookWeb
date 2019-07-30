package com.java4.Services;

import com.java4.User.Book_order;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ${Kshitish_Pokharel} on 8/2/2017.
 */
public class OrderDao {
    public boolean confirmOrder(Book_order order1) {
        boolean ret=false;

        Connection connection=DbConnection.getConnection();

        if(connection != null){

            String sql="INSERT into bookweb.order(OB_name,OB_author, ordered_by) VALUES(?,?,?)";
            try{
                PreparedStatement ps=connection.prepareStatement(sql);
                ps.setString(1,order1.getBname());
                ps.setString(2,order1.getBauthor());
                ps.setString(3,order1.getOrdered_by());
                /*      ps.setString(1,"Economics");
                ps.setString(2,"Bazynta L.P.");
                ps.setString(3,"raman");*/

                int res=ps.executeUpdate(); //returns no of rows

                if(res!=0){
                    ret=true;
                }

            }catch(SQLException e){
                e.printStackTrace();
            }
        }


        return ret;
    }
}
