<%
	String skill1  = request.getParameter("Skill-1");
	String skill2  = request.getParameter("Skill-2");
	session.setAttribute("Skill-1", skill1);
	session.setAttribute("Skill-2", skill2);
%>

<h1>------Education Details-------</h1>
<hr>
	<form action="savedata.jsp" name="savedata"> 
		<p>
		<div>
			<label>Qualification</label>
			<input type="text" name="qualification">
		</div>
		</p>
		<p>
		<div>
			<lable>University</lable>
			<input type="text" name="university">
		</div></p>
		<input type="submit" value="submit">
	
	</form>