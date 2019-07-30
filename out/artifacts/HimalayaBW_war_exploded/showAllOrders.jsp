<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/6/2017
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Himalaya Book Web</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/text.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Himalaya Book Web</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>

<main>
    <div class="innertube">
        <form method="post">

            <table border="0" width="100%">
                <tr>
                    <td width="16.66%"><b>Book Name</b></td>
                    <td width="16.66%"><b>Book Author</b></td>
                    <td width="16.66%"><b>Ordered By</b></td>
                    <td width="16.66%"><b>User Email</b></td>
                    <td width="16.66%"><b>User Address</b></td>
                    <td width="16.66%"><b>Phone</b></td>

                </tr>
                    <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/bookweb";
                String username="root";
                String password="1234";
                String query="SELECT * FROM `order` LEFT JOIN `userinfo` ON order.ordered_by=userinfo.username  WHERE order.OB_author IS NOT NULL UNION SELECT * FROM `order` RIGHT JOIN `userinfo` ON order.ordered_by=userinfo.username  WHERE order.OB_author IS NOT NULL ";
                Connection conn= DriverManager.getConnection(url, username, password);
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);

                while(rs.next()){ %>
                <table width="100%">
                    <tr>
                        <td width="16.66%"><%=rs.getString("OB_name") %></td>
                        <td width="16.66%"><%=rs.getString("OB_author") %></td>
                        <td width="16.66%"><%=rs.getString("ordered_by") %></td>
                        <td width="16.66%"><%=rs.getString("email") %></td>
                        <td width="16.66%"><%=rs.getString("address") %></td>
                        <td width="16.66%"><%=rs.getString("phone") %></td>

                    </tr>
                </table>
                    <%
                }
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            out.println("<h1> error: "+ e.getMessage()+"</h1>");
        }
    %>
        </form>
    </div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
