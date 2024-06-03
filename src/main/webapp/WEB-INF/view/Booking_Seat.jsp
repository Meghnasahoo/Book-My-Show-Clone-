body onload="onLoaderFunc()">

<div class="col" style="background-image: linear-gradient(to  bottom right, #050E34 , #5874EA)">
<div class="inputForm">

<label>Pick a movie: </label>
  <select id="movie">
    <option value="250">Fighter (Rs. 250)</option>
    <option value="200">Shiddat (Rs. 200)</option>
    <option value="150">Gravity (Rs. 150)</option>
    <option value="100">Natsamrat (Rs. 100)</option>
  </select>

<style>
@import url("https://fonts.googleapis.com/css?family=Montserrat&display=swap");

@import url("https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css");

body {
	font-family: "Montserrat", sans-serif;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
  background-color: #242333;
  color: #fff;
  margin: 0;
}

* {
	font-family: "Montserrat", sans-serif !important;
  box-sizing: border-box;
}

.movie-container {
  margin: 20px 0px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column
}

.movie-container select {
  appearance: none;
  -moz-appearance: none;
  -webkit-appearance: none;
  border: 0;
  padding: 5px 15px;
  margin-bottom: 40px;
  font-size: 14px;
  border-radius: 5px;
}

.container {
  perspective: 1000px;
  margin: 40px 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.seat {
  background-color: #444451;
  height: 12px;
  width: 15px;
  margin: 3px;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.selected {
  background-color: #0081cb;
}

.occupied {
  background-color: #fff;
}

.seat:nth-of-type(2) {
  margin-right: 18px;
}

.seat:nth-last-of-type(2) {
  margin-left: 18px;
}

.seat:not(.occupied):hover {
  cursor: pointer;
  transform: scale(1.2);
}

.showcase .seat:not(.occupied):hover {
  cursor: default;
  transform: scale(1);
}

.showcase {
  display: flex;
  justify-content: space-between;
  list-style-type: none;
  background: rgba(0,0,0,0.1);
  padding: 5px 10px;
  border-radius: 5px;
  color: #777;
}

.showcase li {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 10px;
}

.showcase li small {
  margin-left: 2px;
}

.row {
  display: flex;
  align-items: center;
  justify-content: center;
}

.screen {
  background: #fff;
  height: 70px;
  width: 70%;
  margin: 15px 0;
  transform: rotateX(-45deg);
  box-shadow: 0 3px 10px rgba(255,255,255,0.7);
}

p.text {
  margin: 40px 0;
}

p.text span {
  color: #0081cb;
  font-weight: 600;
  box-sizing: content-box;
}

.credits a {
  color: #fff;
}


</style>
<script>
const container = document.querySelector('.container');
const seats = document.querySelectorAll('.row .seat:not(.occupied)');
const count = document.getElementById('count');
const total = document.getElementById('total');
const movieSelect = document.getElementById('movie');

let ticketPrice = +movieSelect.value;

//Update total and count
function updateSelectedCount() {
  const selectedSeats = document.querySelectorAll('.row .seat.selected');
  const selectedSeatsCount = selectedSeats.length;
  count.innerText = selectedSeatsCount;
  total.innerText = selectedSeatsCount * ticketPrice;
}

//Movie Select Event
movieSelect.addEventListener('change', e => {
  ticketPrice = +e.target.value;
  updateSelectedCount();
});

//Seat click event
container.addEventListener('click', e => {
  if (e.target.classList.contains('seat') &&
     !e.target.classList.contains('occupied')) {
    e.target.classList.toggle('selected');
  }
  updateSelectedCount();
});
</script>
</div>

<div class="seatStructure">
<center>
  
<table id="seatsBlock">
 <p id="notification"></p>
  <tr>
    <td colspan="14"><div class="screen"></div></td>
  </tr>
  
  <tr>
    <td></td>
    <td>1</td>
    <td>2</td>
    <td>3</td>
    <td>4</td>
    <td>5</td>
    <td></td>
    <td>6</td>
    <td>7</td>
    <td>8</td>
    <td>9</td>
    <td>10</td>
    <td>11</td>
    <td>12</td>
</tr>
  
<tr>
    <td>A</td>
    <td><input type="checkbox" class="seats" value="A1"></td>
    <td><input type="checkbox" class="seats" value="A2"></td>
    <td><input type="checkbox" class="seats" value="A3"></td>
    <td><input type="checkbox" class="seats" value="A4"></td>
    <td><input type="checkbox" class="seats" value="A5"></td>
    <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" value="A6"></td>
    <td><input type="checkbox" class="seats" value="A7"></td>
    <td><input type="checkbox" class="seats" value="A8"></td>
    <td><input type="checkbox" class="seats" value="A9"></td>
    <td><input type="checkbox" class="seats" value="A10"></td>
    <td><input type="checkbox" class="seats" value="A11"></td>
    <td><input type="checkbox" class="seats" value="A12"></td>
  </tr>
  
  <tr>
    <td>B</td>
    <td><input type="checkbox" class="seats" value="B1"></td>
    <td><input type="checkbox" class="seats" value="B2"></td>
    <td><input type="checkbox" class="seats" value="B3"></td>
    <td><input type="checkbox" class="seats" value="B4"></td>
    <td><input type="checkbox" class="seats" value="B5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="B6"></td>
    <td><input type="checkbox" class="seats" value="B7"></td>
    <td><input type="checkbox" class="seats" value="B8"></td>
    <td><input type="checkbox" class="seats" value="B9"></td>
    <td><input type="checkbox" class="seats" value="B10"></td>
    <td><input type="checkbox" class="seats" value="B11"></td>
    <td><input type="checkbox" class="seats" value="B12"></td>
  </tr>
  
  <tr>
    <td>C</td>
    <td><input type="checkbox" class="seats" value="C1"></td>
    <td><input type="checkbox" class="seats" value="C2"></td>
    <td><input type="checkbox" class="seats" value="C3"></td>
    <td><input type="checkbox" class="seats" value="C4"></td>
    <td><input type="checkbox" class="seats" value="C5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="C6"></td>
    <td><input type="checkbox" class="seats" value="C7"></td>
    <td><input type="checkbox" class="seats" value="C8"></td>
    <td><input type="checkbox" class="seats" value="C9"></td>
    <td><input type="checkbox" class="seats" value="C10"></td>
    <td><input type="checkbox" class="seats" value="C11"></td>
    <td><input type="checkbox" class="seats" value="C12"></td>
</tr>
  
<tr>
    <td>D</td>
    <td><input type="checkbox" class="seats" value="D1"></td>
    <td><input type="checkbox" class="seats" value="D2"></td>
    <td><input type="checkbox" class="seats" value="D3"></td>
    <td><input type="checkbox" class="seats" value="D4"></td>
    <td><input type="checkbox" class="seats" value="D5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="D6"></td>
    <td><input type="checkbox" class="seats" value="D7"></td>
    <td><input type="checkbox" class="seats" value="D8"></td>
    <td><input type="checkbox" class="seats" value="D9"></td>
    <td><input type="checkbox" class="seats" value="D10"></td>
    <td><input type="checkbox" class="seats" value="D11"></td>
    <td><input type="checkbox" class="seats" value="D12"></td>
</tr>
  
<tr>
    <td>E</td>
    <td><input type="checkbox" class="seats" value="E1"></td>
    <td><input type="checkbox" class="seats" value="E2"></td>
    <td><input type="checkbox" class="seats" value="E3"></td>
    <td><input type="checkbox" class="seats" value="E4"></td>
    <td><input type="checkbox" class="seats" value="E5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="E6"></td>
    <td><input type="checkbox" class="seats" value="E7"></td>
    <td><input type="checkbox" class="seats" value="E8"></td>
    <td><input type="checkbox" class="seats" value="E9"></td>
    <td><input type="checkbox" class="seats" value="E10"></td>
    <td><input type="checkbox" class="seats" value="E11"></td>
    <td><input type="checkbox" class="seats" value="E12"></td>
</tr>
  
<tr class="seatVGap"></tr>
  
<tr>
    <td>F</td>
    <td><input type="checkbox" class="seats" value="F1"></td>
    <td><input type="checkbox" class="seats" value="F2"></td>
    <td><input type="checkbox" class="seats" value="F3"></td>
    <td><input type="checkbox" class="seats" value="F4"></td>
    <td><input type="checkbox" class="seats" value="F5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="F6"></td>
    <td><input type="checkbox" class="seats" value="F7"></td>
    <td><input type="checkbox" class="seats" value="F8"></td>
    <td><input type="checkbox" class="seats" value="F9"></td>
    <td><input type="checkbox" class="seats" value="F10"></td>
    <td><input type="checkbox" class="seats" value="F11"></td>
    <td><input type="checkbox" class="seats" value="F12"></td>
</tr>
  
<tr>
    <td>G</td>
    <td><input type="checkbox" class="seats" value="G1"></td>
    <td><input type="checkbox" class="seats" value="G2"></td>
    <td><input type="checkbox" class="seats" value="G3"></td>
    <td><input type="checkbox" class="seats" value="G4"></td>
    <td><input type="checkbox" class="seats" value="G5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="G6"></td>
    <td><input type="checkbox" class="seats" value="G7"></td>
    <td><input type="checkbox" class="seats" value="G8"></td>
    <td><input type="checkbox" class="seats" value="G9"></td>
    <td><input type="checkbox" class="seats" value="G10"></td>
    <td><input type="checkbox" class="seats" value="G11"></td>
    <td><input type="checkbox" class="seats" value="G12"></td>
</tr>
  
<tr>
    <td>H</td>
    <td><input type="checkbox" class="seats" value="H1"></td>
    <td><input type="checkbox" class="seats" value="H2"></td>
    <td><input type="checkbox" class="seats" value="H3"></td>
    <td><input type="checkbox" class="seats" value="H4"></td>
    <td><input type="checkbox" class="seats" value="H5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="H6"></td>
    <td><input type="checkbox" class="seats" value="H7"></td>
    <td><input type="checkbox" class="seats" value="H8"></td>
    <td><input type="checkbox" class="seats" value="H9"></td>
    <td><input type="checkbox" class="seats" value="H10"></td>
    <td><input type="checkbox" class="seats" value="H11"></td>
    <td><input type="checkbox" class="seats" value="H12"></td>
</tr>
  
<tr>
    <td>I</td>
    <td><input type="checkbox" class="seats" value="I1"></td>
    <td><input type="checkbox" class="seats" value="I2"></td>
    <td><input type="checkbox" class="seats" value="I3"></td>
    <td><input type="checkbox" class="seats" value="I4"></td>
    <td><input type="checkbox" class="seats" value="I5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="I6"></td>
    <td><input type="checkbox" class="seats" value="I7"></td>
    <td><input type="checkbox" class="seats" value="I8"></td>
    <td><input type="checkbox" class="seats" value="I9"></td>
    <td><input type="checkbox" class="seats" value="I10"></td>
    <td><input type="checkbox" class="seats" value="I11"></td>
    <td><input type="checkbox" class="seats" value="I12"></td>
</tr>
  
<tr>
    <td>J</td>
    <td><input type="checkbox" class="seats" value="J1"></td>
    <td><input type="checkbox" class="seats" value="J2"></td>
    <td><input type="checkbox" class="seats" value="J3"></td>
    <td><input type="checkbox" class="seats" value="J4"></td>
    <td><input type="checkbox" class="seats" value="J5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="J6"></td>
    <td><input type="checkbox" class="seats" value="J7"></td>
    <td><input type="checkbox" class="seats" value="J8"></td>
    <td><input type="checkbox" class="seats" value="J9"></td>
    <td><input type="checkbox" class="seats" value="J10"></td>
    <td><input type="checkbox" class="seats" value="J11"></td>
    <td><input type="checkbox" class="seats" value="J12"></td>
</tr>
  
  
</table>
  
<a href="Payment" <br/><button onclick="updateTextArea()">Confirm Selection</button>></a>
</center>
</div>
      
<br/><br/>


</div>
