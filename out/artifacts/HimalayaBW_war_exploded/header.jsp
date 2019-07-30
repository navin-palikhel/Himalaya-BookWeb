<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 7/21/2017
  Time: 6:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/960_16.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/text.css">


<header id="header">
        <div style="float:left;height: inherit">
            <a href="index.jsp">Himalaya Book Web</a>
            <a href="index.jsp"><img src="images/HBW.png" height="52" width="80" align="left"/></a>
        </div>
        <div style="text-align:right">
            <%
                if (session.getAttribute("username") == null ){// Then new user, show join now
            %>
            <a href="showAllBooks.jsp" >Show all book</a>&nbsp;&nbsp;&nbsp;
            <a href="login-form.jsp">Login</a>&nbsp;&nbsp;&nbsp;
            <a href="RegistrationForm.jsp">Register</a>&nbsp;&nbsp;&nbsp;

            <%
            }else if(((String)session.getAttribute("username")).equals("admin"))
            {

                    %>
            <a href="showAllOrders.jsp">View Orders</a>&nbsp;&nbsp;&nbsp;
            <a href="showAllBooks.jsp">View all Books</a>&nbsp;&nbsp;&nbsp;
            <a href="SellBook.jsp">Add new Books</a>&nbsp;&nbsp;&nbsp;
            <a href="logout.jsp">Logout <br>&nbsp;&nbsp;&nbsp;
                    <%=(String)session.getAttribute("username")%>

           <%}
           else{ %>
                <a href="showAllBooks.jsp" >Show all books</a>&nbsp;&nbsp;&nbsp;
                <a href="orderBook.jsp" >Order Book</a>&nbsp;&nbsp;&nbsp;
                <a href="SellBook.jsp">Sell Book</a>&nbsp;&nbsp;&nbsp;
                <a href="logout.jsp">Logout <br>&nbsp;&nbsp;&nbsp;
                    <%=(String)session.getAttribute("username")%>
                </a>
                <% }%>
        </div>
    </div>
</header>
<%--<div class="navbar">--%>
    <%--<div style="float:left">--%>
        <%--<a href="index.jsp">Himalaya Book Web</a>--%>
        <%--<a href="index.jsp"><img src="images/HBW.png" height="53" width="60" align="left"/></a>--%>
    <%--</div>--%>
    <%--<div style="text-align:right">--%>
        <%--<a href="SellBook.jsp">Sell Book</a>--%>
        <%--<a href="login-form.jsp">Login</a>--%>
        <%--<a href="RegistrationForm.jsp">RegisterNewUser</a>--%>
    <%--</div>--%>

<%--</div>--%>