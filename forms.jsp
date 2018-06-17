<!DOCTYPE html>
<html>
<head>
<title>
</title>
<style>
body
{ background-color:yellow ;
text-align:center;
font-family:verdana;
 margin:auto; 
 width:350px;
 }
 table,tr,td{
	 border:1px solid black ;
	 }
</style>
</head> 

<body >

<h3> User details have been captured successfully!! Below are the details</h3>
<table>
<tr><td><b>First Name :</td></b> 
<td>%=request.getParameter("firstname") %</td>
</tr>
<tr>
<td><b>Last Name :</b></td>
<td>%=request.getParameter("lastname") % </td>
</tr>

<tr><td><b>Contact number :</b></td>
<td>%=request.getParameter("number") % </td>
</tr>
<td><b>Email: </b></td>
<td>%=request.getParameter("email") % </td>
</tr>
<tr><td><b>DOB Month :</b></td>
<td>%=request.getParameter("DoBmonth") %</td>
</tr>
<tr><td><b>DOB day :</b></td>
<td>%=request.getParameter("DoBday") % </td>
</tr> 
<tr><td><b>DOB year :</b></td>
<td>%=request.getParameter("DoByear") %</td>
</tr>
<tr><td><b>Gender :</b></td>
<td>%=request.getParameter("Male") %</td>
</tr> 
<tr><td><b>Gender :</b></td>
<td>%=request.getParameter("Female") %</td>
</tr>
</table>
</body>
</html>












</html>