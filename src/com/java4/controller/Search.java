package com.java4.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by ${Kshitish_Pokharel} on 8/5/2017.
 */
public class Search extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/Bookweb";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "1234";
        Statement st=null;
        try{
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, userName, password);
            System.out.println("connected!.....");
            String B_name = request.getParameter("B_name");
            ArrayList al = null;
            ArrayList pid_list = new ArrayList();
            String query = "select * from bookweb.book";
            if(B_name!=null && !B_name.equals("")){
                query = "select * from bookweb.book where B_name='" + B_name + "' ";
            }
            System.out.println("query " + query);
            st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                al = new ArrayList();

                al.add(rs.getString("B_id"));
                al.add(rs.getString("B_name"));
                al.add(rs.getString("B_category"));
                al.add(rs.getString("B_author"));
                al.add(rs.getString("B_price"));
                al.add(rs.getString("B_summary"));
                al.add(rs.getBlob("B_photo"));
                System.out.println("al :: " + al);
                pid_list.add(al);
            }

            request.setAttribute("piList", pid_list);
            RequestDispatcher view = request.getRequestDispatcher("view.jsp");
            view.forward(request, response);
            conn.close();
            System.out.println("Disconnected!");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

