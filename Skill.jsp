<%
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		session.setAttribute("fname", fname);
		session.setAttribute("lname", lname);
%>


<h1>Skill Details</h1>
<hr>
<form action="education.jsp" name="education">
	<p>
	<div>
		<label>Skill-1:</label>
		<input type="text" name="Skill-1">
	</div></p>
	<p>
	<div>
		<label>Skill-2:-</label>
		<input type="text" name="Skill-2">
	</div></p>
	<input type="submit" value="Next">

</form>