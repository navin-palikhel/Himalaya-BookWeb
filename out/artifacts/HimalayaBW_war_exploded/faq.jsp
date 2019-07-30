<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 7/21/2017
  Time: 6:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/styles.css">
    <title>HBW</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>
<main>
    <div class="innertube">
    <h1 style="alignment: center">FAQ's</h1>
    <br/><br/>
    <a href="#1" style="color: black">&bull; How will the Book reach me?</a>
    <br/><br/>
    <a href="#2" style="color: black">&bull; In How many days will the book be delivered?</a>
    <br/><br/>
    <a href="#3" style="color: black">&bull; What is our maximum diameter of shipping coverage?</a>
    <br/><br/>
    <a href="#4" style="color: black" >&bull; What are the payments methods?</a>
    <br/><br/>
    <a href="#5" style="color: black">&bull; Are there any delivery charges?</a>
    <br/><br/>
    <a href="#6" style="color: black">&bull; Will these books reach me within the same day as specified?</a>


<div>
    <br><br>
    <a  href="#top"  name="1">&bull; How will the Book reach me?</a>
    <p style="color: #981928">
        The book you ordered will be delivered to you at the address you provided in our website.
    </p>
</div>
<a  href="#top" name="2">&bull; In How many days will the book be delivered?</a>
<div>
    <p style="color: #981928">
        Generally,the books take 2-3 days inside Kathmandu valley.It may take a week outside Kathmandu for book to be delivered.
    </p>
</div>
<a  href="#top" name="3">&bull; What is our maximum diameter of shipping coverage?</a>
<div>
    <p style="color: #981928">
        We ship all across Nepal.
    </p>
</div>
<a  href="#top" name="4">&bull; What are the payments methods?</a>
<div>
    <p style="color:#981928">
        Payment method is cash on delivery.You will only pay us when your book gets delivered to you.
    </p>
</div>
<a  href="#top" name="5">&bull; Are there any delivery charges?</a>
<div>
    <p style="color: #981928">
        Delivery charges are free inside Kathmandu valley.Extra shipping cost are included outside the valley based on your location.
    </p>
</div>
<a  href="#top" name="6">&bull; Will these books reach me within the same day as specified?</a>
<div>
    <p style="color:#981928">
        Yes,it will reach to you on specified date.However,in case of some unavoidable circumstances the delivery might be a day or two late.
    </p>
</div>
</div>

</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
