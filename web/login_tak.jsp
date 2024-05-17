<%@page import="com.ims.dao.userDao"%>
<jsp:useBean id="user" class="com.ims.model.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<%
  if(userDao.aunticateUser(user, session))
  {
      session.setAttribute("current_email",user.getUser_email());
      response.sendRedirect("home.jsp");
  
  }
  else
  {
  
  }
%>