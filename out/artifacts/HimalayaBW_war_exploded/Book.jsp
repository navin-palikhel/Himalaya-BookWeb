<%@ page import="com.java4.Services.DbConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 7/27/2017
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Himalaya Book Web</title>
</head>
<body>

    <%
        String id = request.getParameter("id");
        if (request.getParameter("id") == null) {
            response.sendRedirect("viewBooks.jsp");
        }else {
            try {

                Connection con = DbConnection.getConnection();

                Statement st = con.createStatement();


                String getBookQuery = "SELECT * FROM  bookweb.book WHERE  B_id =" + id + " GROUP BY  B_name ";
                ResultSet rs = st.executeQuery(getBookQuery);

                rs.next();

                String B_id = rs.getString("B_id");

                String B_name = rs.getString("B_name");

                String B_category = rs.getString("B_category");

                String B_author = rs.getString("B_author");

                String B_price = rs.getString("B_price");

                String B_summary = rs.getString("B_summary");
            }catch (Exception ex){
                ex.printStackTrace();
        }
    %>

<div class="main">
    <div class="container_16">

        <div class="grid_16">
                <div class="grid_16">
                    <h2 class="heading"><%=B_name%>- <%=B_author%> <%= B_category%></h2>
                </div>
            </div>

            <div class="grid_10">
                <div class="grid_10">
                    <br/>
                    <h5>Category :<a href="#"><span class="blue"><%= category_name%></span></a> > <a href="#"><span class="blue"><%= sub_category_name%></span></a></h5>
                    <div class="clear"></div>
                    <br/>
                    <h5>Priced At <span class="BigRed">Rs. <%= price%></span></h5>
                    <br/>
                    <br/>
                    <%
                        if (session.getAttribute("admin") != null){
                    %>
                    <a href="admin_manageProduct.jsp?pid=<%= product_id %>">
                        <div class="grid_1" id="buy">
                            Edit
                        </div>
                    </a>
                    <%
                        }
                    %>


                    <a href="addToCart.jsp?id=<%= product_id %>">
                        <div class="grid_3" id="buy">
                            Buy This Product Now
                        </div>
                    </a>

                    <h1>Summary Of this item</h1>
                    <div class="clear"></div>
                    <p>Summary of <%= product_name%>

                            <%= summary%>


                    <h1>Brief Description</h1>
                    <br/>
                    <table class="grid_6" id="descripTable">
                        <tr class="grid_6">
                            <td>Name:</td>
                            <td><%= product_name%></td>
                        </tr>
                        <tr class="grid_6">
                            <td>Category</td>
                            <td><%= category_name%></td>
                        </tr>
                        <tr class="grid_6">
                            <td>Sub-Category</td>
                            <td><%= sub_category_name%></td>
                        </tr>
                        <tr class="grid_6">
                            <td>Company </td>
                            <td><%= company_name%></td>
                        </tr>
                    </table>
                </div>
            </div>

            <div  class="grid_5">
                <div id="productImages">
                    <!-- Images with T are thumbs Images While with Q are The actual source Images -->

                    <img class="BigProductBox" alt="<%= product_name %>" src="<%= image_name%>" />

                    <div class="clear"></div>

                    <%
                        String getImages = "SELECT  `image-name` FROM  `products` INNER JOIN  `images` USING (  `product-name` ) WHERE  `product_id` =" + product_id + "";

                        rs.close();

                        rs = st.executeQuery(getImages);
                        int img_number = 1;
                        rs.next();
                        // GET THE REST OF THE PRODUCT IMAGES
                        while (rs.next()) {

                            image_name = rs.getString("image-name");

                    %>


                    <a href="<%= image_name %>" rel="lightbox[product]" title="Click on the right side of the image to move forward.">
                        <img class="SmallProductBox" alt="<%= image_name %> 1 of 8 thumb" src="<%= image_name %>" />
                    </a>

                    <%
                        }
                        st.execute("UPDATE  `products` "
                                +" SET  `hits` =  '"+(product_hits+1)+"' "
                                +" WHERE  `products`.`product_id` ="+product_id+" ");
                        st.close();
                        }
                    %>
                    <!--
                                            <a href="images/productImages/q1.jpeg" rel="lightbox[product]" title="Click on the right side of the image to move forward.">
                                                <img class="SmallProductBox" alt="Assassins Creed 1 of 8 thumb" src="images/productImages/t1.jpeg" />
                                            </a>
                    -->
                </div>
                <div class="clear"></div>

            </div>

        </div>

        <jsp:include page="includesPage/mainHeaders/topMostViewedProducts_5_1.jsp"></jsp:include>



    </div>
</div>

</body>
</html>
