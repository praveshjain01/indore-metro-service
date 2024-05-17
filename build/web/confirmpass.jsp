<%@page import="com.ims.dao.MetroCraddao"%>
<jsp:useBean id="metrocard" class="com.ims.model.MetroCard" scope="request"></jsp:useBean>
<jsp:setProperty name="metrocard" property="*"></jsp:setProperty>
<%
   if(MetroCraddao.generateMetroCard(metrocard))
   {
     %>
     <script>
         alert('Card Generated');
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
