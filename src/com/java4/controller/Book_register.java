package com.java4.controller;

import com.java4.Services.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ${Kshitish_Pokharel} on 7/24/2017.
 */
@MultipartConfig(maxFileSize = 16177215)
public class Book_register extends HttpServlet {
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/Bookweb";
    private String dbUser = "root";
    private String dbPass = "1234";

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        String Bname = request.getParameter("Bname");
        String author = request.getParameter("author");
        String Category=request.getParameter("Category");
        String price=request.getParameter("price");
        String summary=request.getParameter("summary");

        HttpSession session= request.getSession();
        String added=(String) session.getAttribute("username");

        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client

        try {
            // connects to the database
            conn= DbConnection.getConnection();
            PreparedStatement statement;

            // constructs SQL statement
            statement = conn.prepareStatement("INSERT INTO bookweb.book (B_name, B_author,B_category, B_price, B_summary, B_photo, added_by) values (?,?,?,?,?,?,?)");
            statement.setString(1, Bname);
            statement.setString(2, author);
            statement.setString(3, Category);
            statement.setString(4, price);
            statement.setString(5, summary);
            statement.setString(7, added);

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(6, inputStream);
            }

            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
}
