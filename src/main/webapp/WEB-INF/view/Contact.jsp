<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    max-width: 600px;
    margin: 100px auto;
    background-color: #fff;
    border-radius: 5px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h1 {
    color: #333;
}

.form-container {
    margin-top: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: inline-block;
    width: 100px;
    font-weight: bold;
}

.form-group input[type="text"], 
.form-group textarea {
    width: calc(100% - 120px);
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.form-group textarea {
    height: 100px;
}

.submit-button {
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.submit-button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
 
    <div class="form-container">
        <form action="contactproc" method="post">
            <div class="form-group">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="pname" required>
            </div>
            <div class="form-group">
                <label for="email">Your Email:</label>
                <input type="text" id="email" name="pemail" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <input type="text" id="message" name="pmessage" required>
            </div>
           <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                        <button type="submit" class="btn btn-dark btn-lg">Send Message</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>