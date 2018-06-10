<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup Form</title>
<style>
body {
	background-image: URL("wallpaper3.jpg");
}

.wrap {
	width: 420px;
	margin: auto;
	background: #00adee;
	margin-top: 50px;
	padding: 5px;
}

form {
	padding: 10px;
	font-family: verdana;
	border: 1px; dotted white;
	margin: 10px;
}

h2 {
	text-align: center;
	background: orange;
	color: white;
	padding: 10px;
	border-radius: 10px;
}

h3 {
	text-align: center;
	background: violet;
	color: white;
}

input {
	padding: 10px;
	margin: 5px;
	border-radius: 5px;
	border: none;
}

input[type=text], input[type=text], input[type=email], input[type=number],
	input[type=password], input[type=password] {
	width: 90%;
}

input[type=submit] {
	width: 95%;
	background: orange;
	cursor: pointer;
	font-size: 18px;
	font-weight: bold;
	color: white;
}

input[type=submit]:hover {
	background: green;
	opacity: 3;
}

select {
	padding: 10px;
	width: 32%;
	border-radius: 5px;
}
</style>
<script type="text/javascript">
   
   var invalid =0;
  
   
  
function validation(){
	invalid = 0;
	length = document.getElementById("password").value.length;
	
	 //Name of the user validation
	if(document.getElementById("firstname").value == "")
	{
		document.getElementById("invalid_1").innerHTML = "You must type in a valid name";
		invalid += 1;
	}
	else{
		document.getElementById("invalid_1").innerHTML;
	}
	
	//Email validation
	if(document.getElementById("email").value.indexOf("@") == -1){
		document.getElementById("invalid_2").innerHTML = "Enter proper email id";
		invalid += 1;
	}
	else{
		document.getElementById("invalid_2").innerHTML;
	}
	
	//Final validation
	if(invalid!=0){
		return false;
	}
	else{
		return true;
	}
}

function checkPass(){
	var pass1 = document.getElementById("password");
	var pass2 = document.getElementById("confirmpassword");
	var message = document.getElementById("confirmMessage");
	var goodColor = "green";
	var badColor = "red";
	
	if(pass1.value == pass2.value){
		pass2.style.backgroundcolor = goodColor;
		message.style.color = goodColor;
		message.innerHTML = "Passwords Match!"
	}
	else{
		pass2.style.backgroundcolor = badColor;
		message.style.color = badColor;
		message.innerHTML = "Passwords do not Match!"
	}
	
}








</script>

</head>
<body>
	<div class="wrap">
		<form name="myform" action="SimpleForm" method="POST" onsubmit="return validation()">
			<h2>Sign up for free</h2>
			<h3>
				<marquee>
					<a href="https://www.w3schools.com/">W3 Schools tutorial...
						Your one stop solution for all front end technologies!!!</a>
				</marquee>
			</h3>
			<input type="text" name="firstname" id="firstname"
				placeholder="Enter your first name" maxlength="20"> <input type="text"
				name="lastname" id="lastname" placeholder="Enter your last name" maxlength="20"> <input
				type="email" name="email" id="email" placeholder="Enter your email"> 
				<input type="number" name="number" id="number" placeholder="Enter your mobile number" maxlength="10">
			<input type="password" name="password" id="password"
				placeholder="Enter your password" maxlength="10"> <input type="password"
				name="confirmpassword" id="confirmpassword" placeholder="Enter your password again" maxlength="10" onkeyup="checkPass(); return false;">
            <span id ="confirmMessage" class="confirmMessage"></span>

			<br> <span style="font-size: 20px;">Date of Birth</span> <br>
			<select name="DoBmonth" id="DoBmonth">
				<option>Month</option>
				<option value="january">January</option>
				<option value="february">February</option>
				<option value="March">March</option>
				<option value="April">April</option>
				<option value="May">May</option>
				<option value="June">June</option>
				<option value="July">July</option>
				<option value="August">August</option>
				<option value="September">September</option>
				<option value="October">October</option>
				<option value="November">November</option>
				<option value="December">December</option>
			</select> <select name="DoBday" id="DoBday">
				<option>Day</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
			</select> <select name="DoByear" id="DoByear">
				<option>Year</option>
				<option value="2000">2000</option>
				<option value="1990">1990</option>

			</select> <br>
			<br> <input type="radio" name="Male" id="Male" value="Male">Male <input
				type="radio" name="Female" id="Female" value="Female">Female <br>
			<br> <input type="checkbox">I agree to the terms of use
			<br> <input type="submit" value="Submit Now">
		</form>
		<p id="invalid_1"></p>
		<p id="invalid_2"></p>
		<p id="invalid_2"></p>
		
</body>
</html>