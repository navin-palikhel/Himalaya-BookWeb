<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 7/22/2017
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/960_16.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/text.css">
<html>
<head>
    <title>HBW</title>
</head>
<body>
<%
request.getSession().invalidate();
    response.sendRedirect("index.jsp");
%>
</body>
</html>
