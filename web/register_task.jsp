<%@page import="com.ims.dao.userDao"%>
<jsp:useBean id="user" class="com.ims.model.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
   if(userDao.saveUser(user))
   {
     %>
     <script>
         alert('Registration Success');
         window.location.href="login.jsp";
         
     </script>
     <%
   }
   else
   {
     %>
     <script>
         alert('Registration fails');
     </script>
     <%
   }
%>
