<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 7/21/2017
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Himalaya Book Web</title>
    <link rel="stylesheet" href="css/styles.css">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="category.jsp"></jsp:include>
<jsp:include page="search.jsp"></jsp:include>


<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
