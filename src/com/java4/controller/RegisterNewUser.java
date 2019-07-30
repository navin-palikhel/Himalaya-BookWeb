package com.java4.controller;

import com.java4.Services.UserDao;
import com.java4.User.user;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 450 g1 on 8/6/2017.
 */
public class RegisterNewUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("dusername");
        String email=req.getParameter("email");
        String password=req.getParameter("dpassword");
        String address=req.getParameter("address");
        String phone=req.getParameter("phone");

        user user1=new user();
        user1.setUsername(username);
        user1.setEmail(email);
        user1.setPassword(password);
        user1.setAddress(address);
        user1.setPhone(phone);
UserDao ud=new UserDao();


        if(ud.registerUser(user1))
        {

          /*  resp.getWriter().print(user1.getUsername()+""+email+""+password+""+address+""+phone);*/
            HttpSession session= req.getSession();
            session.setAttribute("username",user1.getUsername());
            resp.sendRedirect("profile.jsp");
        }
        else
        {
            resp.setContentType("text/html");
            resp.getWriter().print("Registration Failed or Invalid.<br> Please try again with a different username"+
            "<br><br><a href=\"RegistrationForm.jsp\">Click here</a>"
                    + " to register");
        }

    }
}

