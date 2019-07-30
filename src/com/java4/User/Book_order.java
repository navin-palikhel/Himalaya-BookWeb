package com.java4.User;

import javax.servlet.http.HttpServlet;

/**
 * Created by ${Kshitish_Pokharel} on 8/6/2017.
 */
public class Book_order extends HttpServlet {
    String Bname, Bauthor,ordered_by;

    public Book_order() {
    }

    public String getBname() {
        return Bname;
    }

    public void setBname(String bname) {
        this.Bname = bname;
    }

    public String getBauthor() {
        return Bauthor;
    }

    public void setBauthor(String bauthor) {
        this.Bauthor = bauthor;
    }

    public String getOrdered_by() {
        return ordered_by;
    }

    public void setOrdered_by(String ordered_by) {
        this.ordered_by = ordered_by;
    }


    }

