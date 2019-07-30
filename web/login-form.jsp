<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
        <h2>Login Form</h2>
        <form method="post" action="login"  name="login">
        <table>
            <tr>
                <div class="form-group">
                    <label for="dusername">Username:</label>
                    <input type="dusername" class="form-control" id="dusername" placeholder="abc" name="dusername">
                </div>
                <div class="form-group">
                    <label for="dpassword">Password:</label>
                    <input type="password" class="form-control" id="dpassword" placeholder="......" name="dpassword">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-default" id="Login">
                </div>
        </table>
    </form>
</div>
</main>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>