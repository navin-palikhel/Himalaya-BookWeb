package com.java4.Book;

import com.java4.Services.DbConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.Scanner;

/**
 * Created by ${Kshitish_Pokharel} on 7/27/2017.
 */
public class Book {
    private int B_Id;
    private ArrayList<String> B_category = new ArrayList<String>();
    private ArrayList<String> B_author = new ArrayList<String>();;
    private Connection con;

    public int getB_Id (String bookName) throws SQLException {
        int id;
        String getIdSQL = "SELECT  B_id " +
                "FROM  bookweb.book " +
                "WHERE  B_name = '"+bookName+"'; ";

        Statement st = con.createStatement();
        ResultSet executeQuery = st.executeQuery(getIdSQL);
        executeQuery.next();
        id = executeQuery.getInt("B_id");
        return id;
    }

    public ArrayList<String> getB_category() throws SQLException, ClassNotFoundException {
        DbConnection c = new DbConnection();
        con = c.getConnection();
        String getCategorySQL = "SELECT  `category_name` FROM  `category`; ";
        PreparedStatement psmt = con.prepareStatement(getCategorySQL);
        ResultSet executeQuery = psmt.executeQuery();
        while (executeQuery.next()){
            String category1 = executeQuery.getString ("category_name");
            this.B_category.add(category1);
        }
        return B_category;
    }

    public ArrayList<String> getB_Author() throws SQLException, ClassNotFoundException {
        DbConnection c = new DbConnection();
        con = DbConnection.getConnection();
        String getCategorySQL = "SELECT  B_author " +
                "FROM  bookweb.book;";
        PreparedStatement psmt = con.prepareStatement(getCategorySQL);
        ResultSet executeQuery = psmt.executeQuery();
        while (executeQuery.next()){
            String subcategory1 = executeQuery.getString ("sub-category_name");
            this.B_author.add(subcategory1);
        }
        return B_author;
    }

    public ArrayList<String> getB_author(String category) throws SQLException, ClassNotFoundException {
        DbConnection c = new DbConnection();
        con = c.getConnection();
        String getCategorySQL = "SELECT  B_author " +
                "FROM  bookweb.book " +
                "WHERE  `B_category` =  ?;";

        PreparedStatement psmt = con.prepareStatement(getCategorySQL);
        psmt.setString(1, category);
        ResultSet executeQuery = psmt.executeQuery();
        while (executeQuery.next()){
            String subcategory1 = executeQuery.getString ("sub-category_name");
            this.B_author.add(subcategory1);
        }
        return B_author;
    }

    public static void main (String args []) throws SQLException, ClassNotFoundException{
        Book book = new Book();
        ArrayList<String> category1 = book.getB_category();
        ArrayList<String> author1 = book.getB_Author();

        for (int i=0;i<category1.size() ; i++){
            System.out.println(" "+category1.get(i));
        }


        System.out.println("");

        for (int i=0;i<author1.size() ; i++){
            System.out.println(" "+author1.get(i));
        }

        Scanner sc = new Scanner(System.in);
        String next = sc.next();
        book.getB_Id(next);

        System.out.println(" "+
                book.getB_Id(next));
    }

}
