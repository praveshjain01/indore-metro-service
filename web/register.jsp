<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
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
  <div class="container col-md-4 mg" style="padding-bottom: 10px">
      <form class="text-center border border-light p-5" method="post" action="register_task.jsp">
      <p class="h4 mb-4">Sign up</p>
      <input type="text" id="user_name" class="form-control mb-4" name="user_name" placeholder="Full name" required>
        <input type="text" name="user_add" placeholder="Address" class="form-control mb-4" required>
        <input type="text" id="defaultRegisterPhonePassword" class="form-control mb-4" name="user_contact" placeholder="Phone number" required>
        <input type="date" name="user_dob" placeholder="Date of Birth" class="form-control mb-4" required>
        <select class="browser-default custom-select mb-3" name="user_gender">
          <option value="0" selected disabled>Gender</option>
          <option value="1">Male</option>
          <option value="2">Female</option>
          <option value="3">Others</option>
        </select>
        <input type="email" id="defaultRegisterFormEmail" name="user_email" class="form-control mb-4" placeholder="E-mail" required="">
        <input type="password" id="defaultRegisterFormPassword" name="user_password" class="form-control" placeholder="Password" required>
        <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4"> At least 8 characters and 1 digit
        </small>
        <button class="btn btn-info my-4 btn-block" type="submit">Sign in</button>
        <p>or sign up with:</p>
          <a href="#" class="mx-2" role="button"><i class="fab fa-facebook-f light-blue-text"></i></a>
          <a href="#" class="mx-2" role="button"><i class="fab fa-twitter light-blue-text"></i></a>
          <a href="#" class="mx-2" role="button"><i class="fab fa-linkedin-in light-blue-text"></i></a>
          <a href="#" class="mx-2" role="button"><i class="fab fa-github light-blue-text"></i></a>
        <hr>
        <p>By clicking
        <em>Sign up</em> you agree to our
        <a href="" target="_blank">terms of service</a></p>
    </form>
  </div>
    <%@include file="footer.html" %>
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mdb.js"></script>
</body>
</html>