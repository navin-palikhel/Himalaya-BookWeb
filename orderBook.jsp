<!DOCTYPE html>
<html lang="en">
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
        <h2>Place an order</h2>
        <form action="order" method="post" name="order">

            <div class="form-group">
                <label for="Bname">Book name:</label>
                <input type="text" class="form-control" id="Bname" placeholder="Enter Book you want to order">
            </div>
            <div class="form-group">
                <label for="author">Author:</label>
                <input type="text" class="form-control" id="author" placeholder="Enter the author of book you want to order">
            </div>

            <input type="submit" value="Order">
        </form>
    </div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>