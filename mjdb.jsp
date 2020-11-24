<%-- 
    Document   : mjdb
    Created on : 24 Nov, 2020, 10:36:12 AM
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

        <%
            
            Connection  con;
            Statement s;
            ResultSet rs;
            String sql;
            
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3309/company","root","mj");
            s=con.createStatement();
           
            //sql="insert into customer values('555','ZZZ','z@gmial.com','443','india','555')";
            //s.executeUpdate(sql);
            
            
            sql="select * from customer";
            rs=s.executeQuery(sql);
            
            while(rs.next())
            {
                out.println("<BR>"+rs.getString(1) +" &nbsp "+ rs.getString("name")+" &nbsp "+ rs.getString(3)+" &nbsp "+ rs.getString(4)+" &nbsp "+ rs.getString(5)+" &nbsp "+ rs.getString(6));
            }
            
            
            
                    
                    
                    
                    
                    
            
            
            
            
            
            %>
            
    <center>
            <a href="index.html"> HOME </a> <BR><BR>

    </body>
</html>
