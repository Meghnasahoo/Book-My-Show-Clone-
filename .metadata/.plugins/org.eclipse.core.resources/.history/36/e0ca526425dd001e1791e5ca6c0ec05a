<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout Page</title>
    <link rel="stylesheet" href="logout.css">
    <style>
    /* Styles for the body */
body {
    font-family: Arial, sans-serif;
    background-color: #2A211F ;
    margin: 0;
    padding: 0;
}

.container {
    width: 50%;
    max-width: 400px;
    margin: 50px ;
    background-color: #fff;
    border-radius: 5px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h1 {
    color: #333;
}

.message {
    margin-bottom: 20px;
    color: #777;
}

.login-link {
    color: #007bff;
    text-decoration: none;
}

.login-link:hover {
    text-decoration: underline;
}
}</style>
</head>
<body bgcolor="#2A211F ">
    
    <%-- Perform logout actions here --%>
    <% 
        // Invalidate the session to logout the user
        session.invalidate();
    %>
    
    <div class="container">
    <h1 color="2A211F ">Logout Successful</h1>
    <p class="message">You have been successfully logged out.</p>
    <p><a href="admlogin" class="login-link">Login again</a></p>
</div>
</body>
</html>
<jsp:include page="index_footer.jsp"/>