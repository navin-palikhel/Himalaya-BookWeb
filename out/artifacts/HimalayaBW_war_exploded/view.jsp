<%@ page import="java.sql.Blob" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/5/2017
  Time: 8:47 AM
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
<jsp:include page="footer.jsp"></jsp:include>

</body>



<main>

<table width="700px" align="center"
       style="border:1px solid #000000;">
    <tr>
        <td colspan=7 align="center" style="background-color:teal">
            <b>Book Records</b></td>
    </tr>
    <tr style="background-color:lightgrey;">
        <td><b>B_id</b></td>
        <td><b>B_name</b></td>
        <td><b>B_category</b></td>
        <td><b>B_author</b></td>
        <td><b>B_price</b></td>
        <td><b>B_summary</b></td>
        <td><b>B_photo</b></td>
    </tr>
    <%
        int count = 0;
        String color = "#F9EBB3";
        if (request.getAttribute("piList") != null) {
            ArrayList al = (ArrayList) request.getAttribute("piList");
            System.out.println(al);
            Iterator itr = al.iterator();
            while (itr.hasNext()) {

                if ((count % 2) == 0) {
                    color = "#eeffee";
                }
                count++;
                ArrayList pList = (ArrayList) itr.next();
    %>
    <tr style="background-color:<%=color%>;">
        <td><%=pList.get(0)%></td>
        <td><%=pList.get(1)%></td>
        <td><%=pList.get(2)%></td>
        <td><%=pList.get(3)%></td>
        <td><%=pList.get(4)%></td>
        <td><%=pList.get(5)%></td>
        <td>
        <%
            Blob bl= (Blob) pList.get(6);
            byte[] image=bl.getBytes(1, (int)bl.length());
        %>
        <img src="data:image/jpeg;base64, <%=javax.xml.bind.DatatypeConverter.printBase64Binary(image)%>
            " height="100" width="100" alt="photo"/> </td>

    </tr>
    <%
            }
        }
        if (count == 0) {
    %>
    <tr>
        <td colspan=4 align="center"
            style="background-color:#eeffee"><b>No Record Found..</b></td>
    </tr>
    <%            }
    %>
</table>

</main>
</html>
