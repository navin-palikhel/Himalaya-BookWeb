package com.java4.controller;

import com.java4.Services.Validation;
import com.java4.User.user;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ${Kshitish_Pokharel} on 7/21/2017.
 */
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("dusername");
        String password = req.getParameter("dpassword");
        user user1=new user();
        user1.setUsername(username);
        user1.setPassword(password);
        Validation validation=new Validation();

        if (validation.validate(user1)) {
            HttpSession session= req.getSession();
            session.setAttribute("username",user1.getUsername());
            resp.sendRedirect("profile.jsp");

        } else {
            resp.sendRedirect("login-form.jsp");
        }
    }

}
