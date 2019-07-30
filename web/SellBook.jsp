<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/text.css">
    <link rel="stylesheet" href="css/960_16.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>HBW</title>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>
<main>
    <div class="innertube">
    <h2>Sell Book Form</h2>
    <form action="fileUpload" method="post" autocomplete="off" enctype="multipart/form-data">
        <div class="form-group">
            <label>Bookname:</label>
            <input type="text" class="form-control" name="Bname" placeholder="Enter bookname">
        </div>

        <div class="form-group">
            <label>author:</label>
            <input type="text" class="form-control" name="author" placeholder="Enter author">
        </div>
        <div class="form-group">
            <label>Category:</label>
            <select name="Category">
                <option value="Fiction">Fiction</option>
                <option value="Academics">Academics</option>
                <option value="Religious">Religious</option>
                <option value="Drama">Drama</option>
                <option value="Biography">Biography</option>
                <option value="Others">Others...</option>
            </select>
        </div>
        <div class="form-group">
            <label>File:</label>
            <input type="file" class="form-control" name="photo" placeholder="Select Book Image">
        </div>
        <div class="form-group">
            <label>Price:</label>
            <input type="text" class="form-control" name="price" placeholder="Enter price">
        </div>
        <div class="form-group">
            <label>Summary:</label>
            <input type="text" class="form-control" name="summary" placeholder="Enter Something about book">
        </div>
        <%--<div class="form-group">--%>
            <%--<label for="password">Password:</label>--%>
            <%--<input type="password" class="form-control" id="password" placeholder="Enter password">--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label for="phone">Phone:</label>--%>
            <%--<input type="number" class="form-control" id="phone" placeholder="Enter Phone">--%>
        <%--</div>--%>
        <input type="submit" value="Sell">

    </form>
</div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>