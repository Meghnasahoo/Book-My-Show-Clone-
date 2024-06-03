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
        <h2><center>Movie List</center></h2><hr>
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
                <tr>

                    <th><center>MovieId</center></th>
                    <th><center>Catagory</center></th>
                    <th><center>MovieName</center></th>
                    <th><center>Image</center></th>
					<th><center>Quantity</center></th>
                    <th><center>Price</center></th>
                    <th><center>Actor</center></th>
                     <th><center>Actress</center></th>
                      <th><center>Director</center></th>
                    </tr>
                <form action="#">    
                              
            <% 
       
        String MovieId = null;
        String Category = null;
        String MovieName=null;
        String Image=null;
        int Quantity=0;
        double Price=0;
        String ActorName=null;
        String ActressName=null;
        String DirectorName=null;
        
 Connection conn = null;
 PreparedStatement pstm = null;
 ResultSet rs = null;
 try {
   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Customers","root","root");
pstm = conn.prepareStatement("select *from movie");
rs = pstm.executeQuery();

while (rs.next()) {
MovieId=rs.getString(1);
Category=rs.getString(4);
MovieName=rs.getString(7);
Image=rs.getString(6);
Quantity=rs.getInt(9);
Price=rs.getDouble(8);
ActorName=rs.getString(2);
ActressName=rs.getString(3);
DirectorName=rs.getString(5);

out.println("<tr>");


out.println("<td>");
out.println(MovieId);
out.println("</td>");

out.println("<td>");
out.println(Category);
out.println("</td>");

out.println("<td>");
out.println(MovieName);
out.println("</td>");

out.println("<td>");
out.println(Image);
out.println("</td>");

out.println("<td>");
out.println(Quantity);
out.println("</td>");

out.println("<td>");
out.println(Price);
out.println("</td>");

out.println("<td>");
out.println(ActorName);
out.println("</td>");

out.println("<td>");
out.println(ActressName);
out.println("</td>");

out.println("<td>");
out.println(DirectorName);
out.println("</td>");

out.println("<td>");
out.println("<a href='todofeature.jsp?prodId=" + MovieId + "'><div class='btn btn-danger'>Update</div></a>");

out.println("</td>");
out.println("<td>");
out.println("<a href='todofeature.jsp?prodId=" + MovieId + "'><div class='btn btn-danger'>Delete</div></a>");

out.println("</td>");
out.println("</tr>");
}

} catch (Exception e) {
}

%>
                    
                
            

            </table>
        </div>
        </center>
        </body>
        </html>