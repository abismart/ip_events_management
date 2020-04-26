<%-- 
    Document   : signup
    Created on : 21-Apr-2020, 09:48:14
    Author     : Abishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page import="java.sql.*"%>
<html>
<head>
  <title>DATA BASE CONNECTIVITY</title>
</head>
<body>  <%
  try{  
        Class.forName("com.mysql.jdbc.Driver");  
		        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/events","root","");
                String name=request.getParameter("name");
		String mail=request.getParameter("email");
		String pass=request.getParameter("password");
		Statement stmt=con.createStatement();
		stmt.execute("INSERT INTO users values('"+mail+"','"+pass+"','"+name+"')");
                                   //response.sendRedirect("login.html");        
                %>
        <c:redirect url="index.jsp" >
                <c:param name="susMsg" value="Registration successfull!!, login to continue." />
        </c:redirect>


		<%
     }catch(Exception e){ out.println(e);}  

  %>
  </body>
  </html>
  
