<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/4/2017
  Time: 7:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
                    <td width="14.28%">Book ID</td>
                    <td width="14.28%">Book name</td>
                    <td width="14.28%">Book Category</td>
                    <td width="14.28%">Author</td>
                    <td width="14.28%">Price</td>
                    <td width="14.28%">Summary</td>
                    <td width="14.28%">Photo</td>
                </tr>
                    <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/Bookweb";
                String username="root";
                String password="1234";
                String query="select * from bookweb.book WHERE added_by!='admin' ";
                Connection conn= DriverManager.getConnection(url, username, password);
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(query);

                while(rs.next()){ %>
                <table>
                    <td width="14.28%"><%=rs.getString("B_id") %></td>
                    <td width="14.28%"><%=rs.getString("B_name") %></td>
                    <td width="14.28%"><%=rs.getString("B_category") %></td>
                    <td width="14.28%"><%=rs.getString("B_author") %></td>
                    <td width="14.28%"><%=rs.getString("B_price") %></td>
                    <td width="14.28%"><%=rs.getString("B_summary") %></td>

                    <td width="14.28%">
                        <%
                            Blob bl=rs.getBlob("B_photo");
                            byte[] image=bl.getBytes(1, (int)bl.length());
                        %>
                        <img src="data:image/jpeg;base64, <%=javax.xml.bind.DatatypeConverter.printBase64Binary(image)%>
            " height="100" width="100" alt="photo"/> </td>
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
