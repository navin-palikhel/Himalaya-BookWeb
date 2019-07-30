package com.java4.Book;

import javax.servlet.http.HttpServlet;
import java.sql.Blob;

/**
 * Created by ${Kshitish_Pokharel} on 7/23/2017.
 */
public class Book_upload extends HttpServlet{
    private int B_id;
    String B_name,B_category,B_author;
    Blob B_photo;

    public Book_upload() {
    }

    public int getB_id() {
        return B_id;
    }

    public void setB_id(int b_id) {
        B_id = b_id;
    }

    public String getB_name() {
        return B_name;
    }

    public void setB_name(String b_name) {
        B_name = b_name;
    }

    public String getB_category() {
        return B_category;
    }

    public void setB_category(String b_category) {
        B_category = b_category;
    }

    public String getB_author() {
        return B_author;
    }

    public void setB_author(String b_author) {
        B_author = b_author;
    }

    public Blob getB_photo() {
        return B_photo;
    }

    public void setB_photo(Blob b_photo) {
        B_photo = b_photo;
    }
}
