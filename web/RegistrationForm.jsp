<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/styles.css">
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
        <h2>Registration Form</h2>
        <form method="post" action="register"  name="register">
            <table>
                <div class="form-group">
                    <label for="dusername">Username:</label>
                    <input type="text" class="form-control" id="dusername" placeholder="abc" name="dusername">
                </div>
                <div class="form-group">
                    <label for="dpassword">Password:</label>
                    <input type="password" class="form-control" id="dpassword" placeholder="......" name="dpassword">
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="email" placeholder="abc@gmail.com" name="email">
                </div>

                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" class="form-control" id="address" placeholder="Baneswor" name="address">
                </div>

                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" placeholder="01-214521" name="phone">
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-default" id="Register & Login">
                </div>

            </table>
        </form>
    </div>
</main>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>