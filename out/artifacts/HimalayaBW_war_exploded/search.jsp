<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/5/2017
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Himalaya Book Web</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>
<main>
    <div class="innertube">
<form method="post" action="search">
    <tr order="0" width="100%" align="center">
        <tr><td  colspan=2 align="center">
        <b>Search Details</b></td></tr>
        <tr><td ><b>Book Name:</b></td></tr>
            <tr><td>: <input  type="text" name="B_name" id="B_name">
            </td></tr>
        <tr><td colspan=2 align="center">
    <input  type="submit" value="Search" ></td></tr>
    </table>
</form>
</div>
</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
