<%@page import="com.ims.model.MetroCard"%>
<%@page import="com.ims.dao.MetroCraddao"%>
<%@page import="com.ims.dao.TicketDao"%>
<%@page import="com.ims.model.Ticket"%>
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
    Home
</title>
</head>
<body>
<%@include file="test.html"%>
<div class="container-fluid">
    <div class="row" style="padding-top: 20px;padding-bottom: 10px;">
        <div class="col-lg-6 col-md-4" style="padding-left: 100px; padding-bottom: 10px;">
            <div class="card text-center" style="width: 18rem;">
                <img class="card-img-top" src="images\ticket.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Generate Ticket</h5>
                        <form method="post" action="generateticket_task.jsp">
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
                            <button class="btn btn-primary" type="submit">Generate Ticket</button>
                        </form>
                </div>
            </div>
        </div>
        <div class="cl-md-4" style="padding-left: 100px;">
            <div class="card text-center" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">All Ticket</h5>
                        <div class="table-wrapper-scroll-y my-custom-scrollbar">
                            <table class="table table-bordered table-striped mb-0">
                                <thead>
                                    <tr>
                                        <th scope="col">Ticket ID</th>
                                        <th scope="col">Source Station</th>
                                        <th scope="col">Destination Station</th>
                                    </tr>
                                </thead>
                                <tbody>        
                                <%
                                    Object id = session.getAttribute("current_user_id");
                                    ArrayList<Ticket>alltckt = TicketDao.getAllTicket(id);
                                    Iterator<Ticket>allit = alltckt.iterator();
                                    while(allit.hasNext()){
                                    Ticket ttc = allit.next();
                                %>
                                    <tr>
                                        <th scope="row">
                                            <%=ttc.getTicket_id()%>
                                        </th>
                                        <td>
                                            <%=ttc.getSrc_station()%>
                                        </td>
                                        <td>
                                            <%=ttc.getDst_station()%>
                                        </td>
                                    </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="padding-top: 20px;padding-bottom: 10px;">
        <div class="col-lg-6 col-md-4" style="padding-left: 100px; padding-bottom: 10px;">
            <div class="card text-center" style="width: 18rem;">
                <img class="card-img-top" src="images\ticket.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card</h5>
                        <form method="post" action="generatecard_task.jsp">
                            <select class="browser-default custom-select mb-3" id="station_id" name="station_id">
                                <option value="0" selected disabled>From</option>
                                <%
                                    ArrayList<Station>passfrm = stationDao.getStations();
                                    Iterator<Station>ipfrm = passfrm.iterator();
                                    while(ipfrm.hasNext())
                                    {
                                        Station stt = ipfrm.next();
                                %>
                                <option value="<%=stt.getStation_id()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <select class="browser-default custom-select mb-3" id="up_rank" name="up_rank">
                                <option value="0" selected disabled>To</option>
                                <%
                                    ArrayList<Station>passto = stationDao.getStations();
                                    Iterator<Station>ipto = passto.iterator();
                                    while(ipto.hasNext())
                                    {
                                        Station stt = ipto.next();
                                %>
                                <option value="<%=stt.getUp_rank()%>"><%=stt.getStation_name()%></option>   
                                <%
                                    }
                                %>
                            </select>
                            <button class="btn btn-primary" type="submit">Generate Card</button>
                        </form>
                </div>
            </div>
        </div>
        <div class="cl-md-4" style="padding-left: 100px;">
            <div class="card text-center" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">All Ticket</h5>
                        <div class="table-wrapper-scroll-y my-custom-scrollbar">
                            <table class="table table-bordered table-striped mb-0">
                                <thead>
                                    <tr>
                                        <th scope="col">Ticket ID</th>
                                        <th scope="col">Source Station</th>
                                        <th scope="col">Destination Station</th>
                                        <th scope="col">Duration</th>
                                    </tr>
                                </thead>
                                <tbody>        
                                <%
                                    Object uid = session.getAttribute("current_user_id");
                                    ArrayList<MetroCard> allmcd = MetroCraddao.getAllMetroCard(uid);
                                    Iterator<MetroCard>allmcdi = allmcd.iterator();
                                    while(allmcdi.hasNext()){
                                    MetroCard amcd = allmcdi.next();
                                %>
                                    <tr>
                                        <th scope="row">
                                            <%=amcd.getCard_id()%>
                                        </th>
                                        <td>
                                            <%=amcd.getSrc_station()%>
                                        </td>
                                        <td>
                                            <%=amcd.getDst_station()%>
                                        </td>
                                        <td>
                                            <%=amcd.getDuration()%>
                                        </td>
                                    </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.html" %>
</body>
</html>
