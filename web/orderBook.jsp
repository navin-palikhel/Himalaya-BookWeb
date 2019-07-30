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
        <form method="post" action="order"  name="order">
            <table>
                <div class="form-group">
                    <label for="Bname"> Book Name:</label>
                    <input type="text" class="form-control" id="Bname" placeholder="Enter bookname" name="Bname">
                </div>
                <div class="form-group">
                    <label for="Bauthor">Author Name:</label>
                    <input type="text" class="form-control" id="Bauthor" placeholder="Enter author" name="Bauthor">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-default" id="Order">
                </div>


            </table>
        </form>
    </div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>