<%@page import="java.util.Iterator"%>
<%@page import="com.ims.model.Station"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ims.dao.stationDao"%>
<jsp:useBean id="station" class="com.ims.model.Station" scope="request"></jsp:useBean>
<jsp:setProperty name="station" property="*"></jsp:setProperty>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
    Ticket
</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/mdb.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/compiled.css" rel="stylesheet">
</head>
<body> 
<%@include file ="test.html" %>
    <div class="container-fluid">

        
    <%
        int fare = 10;
        if(station.getUp_rank()>station.getStation_id())
        {
            ArrayList<Station>al = stationDao.getAllStationUP(station);
            %>
            <div class="container col-md-4 mg" style="padding-bottom: 10px;padding-top: 10px">
                <form method="post" action="jourenyplanner_task.jsp">
                            <select class="browser-default custom-select mb-3" id="station_id" name="station_id">
                                <option value="0" selected disabled>From</option>
                                <%
                                    ArrayList<Station>tcktfrm = stationDao.getStations();
                                    Iterator<Station>itf = tcktfrm.iterator();
                                    while(itf.hasNext())
                                    {
                                        Station stt = itf.next();
                                %>
                                <option value="<%=stt.getStation_id()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <select class="browser-default custom-select mb-3" id="up_rank" name="up_rank">
                                <option value="0" selected disabled>To</option>
                                <%
                                    ArrayList<Station>tcktto = stationDao.getStations();
                                    Iterator<Station>itto = tcktto.iterator();
                                    while(itto.hasNext())
                                    {
                                        Station stt = itto.next();
                                %>
                                <option value="<%=stt.getUp_rank()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <button class="btn btn-primary align-content-center" type="submit">Show Pass</button>
                        </form>
    </div>
            <%
                if(al.size()<=3){
                %>
                <h1>Fare = 10</h1>
                <%
                }
            if(al.size()<=5){
            %>
            <h1>fare = 15</h1>
            <%
            }
    if(al.size()<=9){
            %>
            <h1>fare = 20</h1>
            <%
            }
            %>
                            
             <h1>
                <span class="badge badge-info">Total Station  <i class="fas fa-train"></i>
                <span class="badge badge-light ml-auto"> <%=al.size()%></span></span>
            </h1>
            <div style="padding-bottom: 20px">
            <%
            for(Station stat : al)
            {
    %>
    <i class="fas fa-angle-right"></i>
      <div class="badge badge-success">
          <h4><%=stat.getStation_name()%></h4>
      </div>
                
    <%
            }
%>
</div>
<%
        }
        else
        {
            ArrayList<Station>al = stationDao.getAllStationDown(station);
            %>
            <div class="container col-md-4 mg" style="padding-bottom: 10px;padding-top: 10px">
                <form method="post" action="jourenyplanner_task.jsp">
                            <select class="browser-default custom-select mb-3" id="station_id" name="station_id">
                                <option value="0" selected disabled>From</option>
                                <%
                                    ArrayList<Station>tcktfrm = stationDao.getStations();
                                    Iterator<Station>itf = tcktfrm.iterator();
                                    while(itf.hasNext())
                                    {
                                        Station stt = itf.next();
                                %>
                                <option value="<%=stt.getStation_id()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <select class="browser-default custom-select mb-3" id="up_rank" name="up_rank">
                                <option value="0" selected disabled>To</option>
                                <%
                                    ArrayList<Station>tcktto = stationDao.getStations();
                                    Iterator<Station>itto = tcktto.iterator();
                                    while(itto.hasNext())
                                    {
                                        Station stt = itto.next();
                                %>
                                <option value="<%=stt.getUp_rank()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <button class="btn btn-primary align-content-center" type="submit">Show Plan</button>
                        </form>
    </div>
                            
             <h1>
                <span class="badge badge-info">Total Station  <i class="fas fa-train"></i>
                <span class="badge badge-light ml-auto"> <%=al.size()%></span></span>
            </h1>
            <div style="padding-bottom: 20px">
            
            <%
            for(Station stat : al)
            {
    %>
     <i class="fas fa-angle-right"></i>
      <div class="badge badge-success">
          <h4><%=stat.getStation_name()%></h4>
      </div>
    <%
            }
%>
            </div>
      <%
        }
    %>
</div>
    <%@include file="footer.html" %>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mdb.js"></script>
</body>
</html>

