<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Add Movies</h3>

<div>
  <form action="movi"  method="post" "multipart/form-data" >
    <label for="fname">Movie Id</label>
    <input type="text"  name="movieid" placeholder="Movie Id..">

    <label for="lname">Movie Name</label>
    <input type="text"  name="moviename" placeholder="Movie name..">

    <label for="country">Category</label>
    <select id="country" name="category">
      <option value="romantic">Romantic</option>
      <option value="horror">Horror</option>
      <option value="thriller">Thriller</option>
      <option value="scifi">Sci-Fi</option>
      <option value="comedy">Comedy</option>
      <option value="Action">Action</option> 
    </select>
  <label for="lname">Ticket Quantity</label>
    <input type="text"  name="qty" placeholder="Quantity..">
    
    <label for="lname">Price</label>
    <input type="text"  name="price" placeholder="Price..">
     <label for="lname">Actors</label>
    <input type="text"  name="actor" placeholder="Actor..">
    <label for="lname">Actress</label>
    <input type="text"  name="actress" placeholder="Actress..">
    <label for="lname">Director</label>
    <input type="text"  name="director" placeholder="Director..">
    Select File:<input type="file" name="img"/>
  
    <input type="submit" value="Submit">
    <input type="reset" value="Clear">
  </form>
</div>

</body>
</html>