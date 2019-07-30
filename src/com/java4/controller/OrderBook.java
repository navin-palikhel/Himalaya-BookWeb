package com.java4.controller;

import com.java4.Services.OrderDao;
import com.java4.User.Book_order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ${Kshitish_Pokharel} on 8/6/2017.
 */
public class OrderBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Bname = request.getParameter("Bname");
        String Bauthor = request.getParameter("Bauthor");

        HttpSession session = request.getSession();
        String ordered = (String) session.getAttribute("username");
        response.setContentType("text/html");

        Book_order book_order=new Book_order();
        book_order.setBname(Bname);
        book_order.setBauthor(Bauthor);
        book_order.setOrdered_by(ordered);
        OrderDao od=new OrderDao();
        if(od.confirmOrder(book_order)){
            response.getWriter().println("Hello, "+ordered+"! Your order has been successfully placed."+
                    "You'll be contacted by us soon<br>"+
                    "<a href=\"profile.jsp\">Click here</a>"
            +" to go to home page");
        }
        else
        {
            response.getWriter().print("Failed to place order. <br> Please try again.");
        }

    }
}
