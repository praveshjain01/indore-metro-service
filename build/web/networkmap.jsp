<!DOCTYPE html>
<html>
<head>
    <title>
        Network Map
    </title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/mdb.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
    <%@include file="test.html" %>
    <!-- Button trigger modal -->
    <div class="container-fluid">
      
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#basicExampleModal" style="padding-bottom: 10px">
  Network Map
</button>
<!-- Modal -->
<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Network Map</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <iframe src="Routmap-Indore.pdf" width="750" height="800"></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div class="view overlay" style="padding-bottom: 20px;">
  <img src="images/route.JPG" class="img-fluid" alt="Sample image with waves effect.">
  <a>
    <div class="mask waves-effect waves-light rgba-white-slight"></div>
  </a>
</div>
</div>
<%@include file="footer.html" %>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mdb.js"></script>
</body>
</html>