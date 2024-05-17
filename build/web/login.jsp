<!DOCTYPE html>
<html>
<head>
    <title>
        Login
    </title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/mdb.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
.mg{
margin-top: 10px;
margin-left: auto;
margin-right: auto;
margin-bottom: auto;
}
</style>
</head>
<body>
    <%@include file="test.html"%>
    <div class="container-fluid"> 
    <div class="container col-md-4 mg" style="padding-bottom: 10px">
        <form class="text-center border border-light p-5" method="post" action="login_tak.jsp">
            <p class="h4 mb-4">Sign in</p>
            <input type="email" id="user_email" class="form-control mb-4" name ="user_email" placeholder="E-mail" required>
            <input type="password" id="user_password" class="form-control mb-4" name="user_password" placeholder="Password" required>
            <div class="d-flex justify-content-around">
                <div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                        <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                    </div>
                </div>
                <div>
                    <a href="">Forgot password?</a>
                </div>
            </div>
            <button class="btn btn-info btn-block my-4" type="submit">Sign in</button>
            <p>Not an existing user?
                <a href="C:\Users\lenovo-pc\Desktop\MAJOR\Front-End\SignUp\register.html">Register</a>
            </p>
            <p>or sign in with:</p>
            <a href="#" class="mx-2" role="button"><i class="fab fa-facebook-f light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-twitter light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-linkedin-in light-blue-text"></i></a>
            <a href="#" class="mx-2" role="button"><i class="fab fa-github light-blue-text"></i></a>
        </form>
    </div>
    <%@include file="footer.html" %>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/mdb.js"></script>
</div>
</body>
</html>
