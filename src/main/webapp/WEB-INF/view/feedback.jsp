<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>

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
    margin: 50px auto;
    background-color: #AE7306;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
}

input[type="text"],
input[type="email"],
textarea {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #0056b3;
}

.star-rating {
    display: inline-block;
}

.star-rating input[type="radio"] {
    display: none;
}

.star-rating label {
    font-size: 25px;
    color: #ccc;
    float: right;
    padding: 5px;
    cursor: pointer;
    transition: color 0.3s ease;
}

.star-rating label:hover,
.star-rating input[type="radio"]:checked ~ label {
    color: #AE1506;
}</style>
</head>
<body background-color="black">
    <div class="container">
        <h2>Feedback Form</h2>
        <div class="star-rating">
        <h2>Rate Your Experience with Book My Show</h2>
            <input type="radio" id="star5" name="srating" value="5"><label for="star5">5*</label>
            <input type="radio" id="star4" name="srating" value="4"><label for="star4">4*</label>
            <input type="radio" id="star3" name="srating" value="3"><label for="star3">3*</label>
            <input type="radio" id="star2" name="srating" value="2"><label for="star2">2*</label>
            <input type="radio" id="star1" name="srating" value="1"><label for="star1">1*</label>
        </div>
        <form action="feedbackproc" method="post">
            <div class="form-group">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="sname" required>
            </div>

            <div class="form-group">
                <label for="message">Your Feedback:</label>
                <textarea id="message" name="sfeedback" rows="4" required></textarea>
            </div>
            <button type="submit">Submit Feedback</button>
        </form>
    </div>
</body>
</html>