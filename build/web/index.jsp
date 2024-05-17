<%@page import="java.util.Iterator"%>
<%@page import="com.ims.dao.stationDao"%>
<%@page import="com.ims.model.Station"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
    Indore Metro
</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/mdb.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/compiled.css" rel="stylesheet">
</head>
<body>
    <%@ include file="test.html"%>
    <div class="container-fluid">
        <!-- carousel -->
    
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel" style="padding-top: 5px;padding-bottom: 20px">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="h-75 d-inline-block w-100" src="images\banner311018_1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="h-75 d-inline-block w-100" src="images\dmrc-2nd-01102019.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="h-75 d-inline-block w-100" src="images\IMG_9952.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="h-75 d-inline-block w-100" src="images\dmrc-2nd-2-01102019.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- /carousel -->
    
    <!-- card -->
    <div class="row" style="padding-top: 20px;padding-bottom: 20px;">
        <div class="cl-md-4" style="padding-left: 100px;">
            <div class="card text-center" style="width: 18rem;">
                <img class="card-img-top" src="images\routemap.JPG" alt="Card image cap" height="300">
                    <div class="card-body">
                        <h5 class="card-title">Network Map</h5>
                        <p class="card-text">
                        </p>
                        <a href="networkmap.jsp" class="btn btn-primary">Map</a>
                    </div>
            </div>
        </div>
        <div class="cl-md-4" style="padding-left: 100px;">
            <div class="card text-center" style="width: 18rem;">
                <img class="card-img-top" src="images\ticket.png" alt="Card image cap">
                   <div class="card-body">
                        <h5 class="card-title">Plan your Journey</h5>
                        <form method="post" action="jourenyplanner_task.jsp">
                            <select class="browser-default custom-select mb-3" id="station_id" name="station_id">
                                <option value="0" selected disabled>From</option>
                                <%
                                    ArrayList<Station>stonList = stationDao.getStations();
                                    Iterator<Station>iitr = stonList.iterator();
                                    while(iitr.hasNext())
                                    {
                                        Station stt = iitr.next();
                                %>
                                <option value="<%=stt.getStation_id()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <select class="browser-default custom-select mb-3" id="up_rank" name="up_rank">
                                <option value="0" selected disabled>To</option>
                                <%
                                    ArrayList<Station>sttonList = stationDao.getStations();
                                    Iterator<Station>iitor = sttonList.iterator();
                                    while(iitor.hasNext())
                                    {
                                        Station stt = iitor.next();
                                %>
                                <option value="<%=stt.getUp_rank()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <button class="btn btn-primary" type="submit">Show Plan</button>
                        </form>
                    </div>
            </div>
        </div>
        <div class="cl-md-4" style="padding-left: 100px;">
            <div class="card text-center" style="width: 18rem;">
                <img class="card-img-top" src="images\locations.png" alt="Card image cap" height="300">
                    <div class="card-body">
                        <h5 class="card-title">Live Location</h5>
                        <p class="card-text"></p>
                        <a href="location.html" class="btn btn-primary">Get Location</a>
                    </div>        			
            </div>
        </div>
    </div>
<h2 style="text-align: center;padding-top: 5px;">
    <strong>Elaboration of Phase-I Routes for Indore Metro</strong>
</h2>
    <hr>
    <div class="alert alert-success" role="alert">
       Route Description: Palasia- Railway Station- Rajwara- Bada Ganpati- Airport- 
       Bhawarsala- MR10- -Vijay Nagar-Radisson – Bangali Chouraha –Palasia
       <br>Route Length : 31.53 KM
    </div>
    <!-- /card -->
    </div>
   <%@include file="footer.html"%>
    
    <!-- /container-fluid -->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/mdb.js"></script>
</body>
</html>
