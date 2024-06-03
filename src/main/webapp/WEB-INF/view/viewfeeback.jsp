<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title></title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body><center>
        <h2><center>Feedback List</center></h2><hr>
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
                <tr>

    
                    <th><center>Name</center></th>
                    
					<th><center>Feedback</center></th>

                    </tr>
                <form action="#">    
                              
            <% 
       
       
        String Name=null;
     
        String Feedback=null;
        
         Connection conn = null;
 PreparedStatement pstm = null;
 ResultSet rs = null;
 try {
   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Customers","root","root");
pstm = conn.prepareStatement("select *from feeduser");
rs = pstm.executeQuery();

while (rs.next()) {
Name=rs.getString(3);

Feedback=rs.getString(2);

out.println("<tr>");



out.println("<td>");
out.println(Name);
out.println("</td>");



out.println("<td>");
out.println(Feedback);
out.println("</td>");


}

} catch (Exception e) {
}

%>
                    
                
            

            </table>
        </div>
        </center>
        </body>
        </html>     