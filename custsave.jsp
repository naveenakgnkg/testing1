<%-- 
    Document   : custsave
    Created on : 24 Nov, 2020, 10:53:45 AM
    Author     : Mine
--%>

<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <center><h2> CUSTOEMR REGISTRATION SAVE <hr>
            
            <%
                
               String cid=request.getParameter("cid");
               String cname=request.getParameter("cname");
               String email=request.getParameter("email");
               String cno=request.getParameter("cno");
               String state=request.getParameter("state");
               String pin=request.getParameter("pin");
               
               
               out.println("<Br> CUST ID="+cid);
               out.println("<Br> CUST NAME="+cname);
               out.println("<Br> CUST CONTA="+cno);
               out.println("<Br> CUST email="+email);
               out.println("<Br> CUSTstate="+state);
               out.println("<Br> CUST pin="+pin);
               
            Connection  con;
            Statement s;
            ResultSet rs;
            String sql;
            
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3309/company","root","mj");
            s=con.createStatement();
           
            sql="insert into customer values('"+cid+"','"+cname+"','"+email+"','"+cno+"','"+state+"','"+pin+"')";
            s.executeUpdate(sql);
            
            out.println("<BR> NEW CUSTOMRe REGISTER SUCCESSFULLY...");
            
                
                
                %>
                
                

     
    <center>
            <a href="index.html"> HOME </a> <BR><BR>

    </body>
</html>
