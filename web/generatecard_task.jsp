<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ims.model.Station"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ims.dao.stationDao"%>
<jsp:useBean id="station" class="com.ims.model.Station" scope="request"></jsp:useBean>
<jsp:useBean id="ticket" class="com.ims.model.Ticket" scope="request"></jsp:useBean>
<jsp:setProperty name="station" property="*"></jsp:setProperty>
<jsp:setProperty name="ticket" property="*"></jsp:setProperty>

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
    <style type="text/css">
    .mg{
		    margin-top: 5%;
	      margin-left: auto;
	      margin-right: auto;
	      margin-bottom: auto;
	     }
</style>
    <div class="container-fluid">
        <%
            if(station.getUp_rank()>station.getStation_id())
            {
                ArrayList<Station>al = stationDao.getTicketStationUp(station);
                Station srcup = al.get(0);
                Station dstup = al.get(al.size()-1);
        %>
        
        <div class="container col-md-4 mg" style="padding-bottom: 10px">
        <form class="text-center border border-light p-5" method="post" action="confirmpass.jsp">
            <input type="text" id="user_id" class="form-control mb-4" name="user_id" value="<%=session.getAttribute("current_user_id")%>">
            <input type="text" id="user_name" class="form-control mb-4" name="user_name" value="<%=session.getAttribute("current_username")%>">
            <input type="text" id="user_contact" class="form-control mb-4" name="user_contact" value="<%=session.getAttribute("current_user_contact")%>">
            <input type="text" id="user_email" class="form-control mb-4" name="user_email" value="<%=session.getAttribute("current_email")%>">
            <input type="text" id="src_station" class="form-control mb-4" name="src_station" value="<%=srcup.getStation_name()%>">
            <input type="text" id="dst_station" name="dst_station"  class="form-control mb-4" value="<%=dstup.getStation_name()%>">
            <input type="text" id="date_issue" name="date_issue"  class="form-control mb-4" value="<%= (new java.util.Date()).toLocaleString()%>">
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline1" name="duration" value="1 Month">
                <label class="custom-control-label" for="defaultInline1">1 Month</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline2" name="duration" value="3 Months">
                <label class="custom-control-label" for="defaultInline2">3 Months</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline3" name="duration" value="6 Months">
                <label class="custom-control-label" for="defaultInline3">6 Months</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline3" name="duration" value="1 Year">
                <label class="custom-control-label" for="defaultInline3">1 Year</label>
            </div>
            <button class="btn btn-info my-4 btn-block" type="submit">Confirm and Pay</button>
        </form>
        </div>
        
        <%  
            }
            else{
                ArrayList<Station>tstdwn = stationDao.getTicketStationDown(station);
                Station srcdwn = tstdwn.get(0);
                Station dstdwn = tstdwn.get(tstdwn.size()-1);
        %>
        
        <div class="container col-md-4 mg" style="padding-bottom: 10px">
        <form class="text-center border border-light p-5" method="post" action="confirmpass.jsp">
            <input type="text" id="user_id" class="form-control mb-4" name="user_id" value="<%=session.getAttribute("current_user_id")%>">
            <input type="text" id="user_name" class="form-control mb-4" name="user_name" value="<%=session.getAttribute("current_username")%>">
            <input type="text" id="user_contact" class="form-control mb-4" name="user_contact" value="<%=session.getAttribute("current_usercontact")%>">
            <input type="text" id="user_email" class="form-control mb-4" name="user_email" value="<%=session.getAttribute("current_email")%>">
            <input type="text" id="src_station" class="form-control mb-4" name="src_station" value="<%=srcdwn.getStation_name()%>">
            <input type="text" id="dst_station" name="dst_station"  class="form-control mb-4" value="<%=dstdwn.getStation_name()%>">
            <input type="text" id="date_issue" name="date_issue"  class="form-control mb-4" value="<%= (new java.util.Date()).toLocaleString()%>">
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline1" name="duration" value="1 Month">
                <label class="custom-control-label" for="defaultInline1">1 Month</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline2" name="duration" value="3 Months">
                <label class="custom-control-label" for="defaultInline2">3 Months</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline3" name="duration" value="6 Months">
                <label class="custom-control-label" for="defaultInline3">6 Months</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="defaultInline3" name="duration" value="1 Year">
                <label class="custom-control-label" for="defaultInline3">1 Year</label>
            </div>
            <button class="btn btn-info my-4 btn-block" type="submit">Confirm and Pay</button>
        </form>
        </div>
        <%
            }
        %>
    </div>
        
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/popper.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/mdb.js"></script>  
</body>
</html>