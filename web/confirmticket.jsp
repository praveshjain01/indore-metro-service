<%@page import="com.ims.dao.TicketDao"%>
<jsp:useBean id="ticket" class="com.ims.model.Ticket" scope="request"></jsp:useBean>
<jsp:setProperty name="ticket" property="*"></jsp:setProperty>
<%
   if(TicketDao.generateTicket(ticket))
   {
     %>
     <script>
         alert('Ticket Generated');
         window.location.href="home.jsp";
         
     </script>
     <%
   }
   else
   {
     %>
     <script>
         alert('failed');
     </script>
     <%
   }
%>
