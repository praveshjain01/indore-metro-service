<!DOCTYPE html>
<html>
<head>
    <title>
        FeedBack
    </title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/mdb.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
       <style type="text/css">
    .mg{
		    margin-top: 5%;
	      margin-left: auto;
	      margin-right: auto;
	      margin-bottom: auto;
	     }
   </style>
</head>
<body>
    <%@include file="test.html" %>
	<div class="container col-md-4 mg">
    <!-- Default form contact -->
<form class="text-center border border-light p-5" action="#!">

    <p class="h4 mb-4">Feedback</p>

    <!-- Name -->
    <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Name">

    <!-- Email -->
    <input type="email" id="defaultContactFormEmail" class="form-control mb-4" placeholder="E-mail">

    <!-- Subject -->
    <label>Subject</label>
    <select class="browser-default custom-select mb-4">
        <option value="" disabled>Choose option</option>
        <option value="1" selected>Feedback</option>
        <option value="2">Report a bug</option>
        <option value="3">Feature request</option>
        <option value="4">Feature request</option>
    </select>

    <!-- Message -->
    <div class="form-group">
        <textarea class="form-control rounded-0" id="exampleFormControlTextarea2" rows="3" placeholder="Message"></textarea>
    </div>

    <!-- Copy -->
    <div class="custom-control custom-checkbox mb-4">
        <input type="checkbox" class="custom-control-input" id="defaultContactFormCopy">
        <label class="custom-control-label" for="defaultContactFormCopy">Send me a copy of this message</label>
    </div>

    <!-- Send button -->
    <button class="btn btn-info btn-block" type="submit">Send</button>

</form>
<!-- Default form contact -->
	</div>
        <%@include file="footer.html" %>
 <script type="text/javascript" src="C:\Users\dell\Desktop\major project\mdb\js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="C:\Users\dell\Desktop\major project\mdb\js/popper.min.js"></script>
  <script type="text/javascript" src="C:\Users\dell\Desktop\major project\mdb\js/bootstrap.min.js"></script>
  <script type="text/javascript" src="C:\Users\dell\Desktop\major project\mdb\js/mdb.js"></script>
</body>
</html>
