<%@page import="java.sql.*" %>
<%
	String fname = (String)session.getAttribute("fname");
	String lname = (String)session.getAttribute("lname");
	
	String Skill1 = (String)session.getAttribute("Skill-1");
	String Skill2 = (String)session.getAttribute("Skill-2");
	
	String qualification = request.getParameter("qualification");
	String university = request.getParameter("university");
	
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/vgDB";
	String user = "root";
	String password = "Vikas@7720";
	String sql = "INSERT INTO user(fname,lname,Skill1,Skill2,qualification,university) VALUES(?,?,?,?,?,?)";
	
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, user, password);
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, Skill1);
	ps.setString(4, Skill2);
	ps.setString(5, qualification);
	ps.setString(6, university);
	
	int result = ps.executeUpdate();
	if(result == 1){
		out.print("<h2 style='color:green';>Data wil be Stores.</h2>");
		out.println("<a href='index.jsp'>Home</a>");
	}else{
		out.println("<h1 style='color:red';>Faild</h1>");
		out.println("<a  href='index.jsp'>Home</a>");
	}
	
			
			

	
%>