<%-- 
    Document   : login
    Created on : 21-Apr-2020, 10:47:01
    Author     : Abishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<body>
<%@ page import ="java.sql.*" %>
<%

    String email = request.getParameter("email");    
    String pwd = request.getParameter("password");
    if(email.equals("admin@gmail.com") && pwd.equals("admin"))
          {
            session.setAttribute("userid", email);
          response.sendRedirect("admin.jsp");}
   else
{

    Class.forName("com.mysql.jdbc.Driver");  
		        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","");Statement st = con.createStatement();
   
    ResultSet rs;
    rs = st.executeQuery("select * from users  where email='" +email+ "' and pass='" +pwd+ "'");	
     if (rs.next()) 
        {
            
            session.setAttribute("userid", email);
            response.sendRedirect("events.jsp");
           
        } 

    else 
         {%>
         <c:redirect url="index.jsp" >
                <c:param name="errMsg" value="Invalid email or password!!!" />
        </c:redirect>
  <%
        
        
         }
}

%>
</body>
</html>
