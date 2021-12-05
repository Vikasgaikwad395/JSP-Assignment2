<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration Form</title>
</head>
<body>
<form action="empDatabase.jsp " name="employee">
	<h2>----------Employee Registration Form--------</h2>
	<hr>
	<div>
		<p>
			<label>Employee Id:- </label>
			<input type="number" name="eid">
		</p>
		<p>
			<label>Employee Name:- </label>
			<input type="text" name="ename">
		</p>
		<p>
			<label>Employee Gender :- </label>
			<input type="radio" name="gender" value="Male">Male
			<input type="radio" name="gender" value="Female">Female
			
		</p>
		<p>
			<label>Employee Role:- </label>
				<select name="role">
					<option value=" ">Select</option>
					<option value="HR">HR</option>
					<option value="Tenchnician">Technician</option>
					<option value="Tester">Tester</option>
					<option value=Developer"">Devoloper</option>
				</select>			
		</p>
		<p>
			<label>Employee Location:- </label>
				<select name="location">
					<option value=" ">Select</option>
					<option value="Pune">Pune</option>
					<option value="Ahmedabad">Ahmedabad</option>
					<option value="Hyderabad">Hyderabad</option>
					<option value="Nashik">Nashik</option>
				</select>
		</p>
		<p>
		<label>Do you have passport?</label>
		<input type="checkbox" name="passport">
		</p>
		<p>
		<input type="submit" value="Register">
		<iput type="button" value="clear">
		</p>
	
	
	</div>


</form>

</body>
</html>