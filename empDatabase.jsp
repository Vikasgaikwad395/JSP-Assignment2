<%@page import ="java.sql.*" %>

<%

String name = request.getParameter("ename");
String gender = request.getParameter("gender");
String role = request.getParameter("role");
String location = request.getParameter("location");
String passport = request.getParameter("passport");

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/vgDB";
String user = "root";
String password = "Vikas@7720";
String sql = "INSERT INTO user_details(ename,gender,role,location,passport) VALUES(?,?,?,?,?)";

Class.forName(driver);
Connection con = DriverManager.getConnection(url, user, password);
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, gender);
ps.setString(3, role);
ps.setString(4, location);
ps.setString(5, passport);

int result = ps.executeUpdate();
if(result == 1){
		out.println("Empployee data will be stores successfully");
		out.println("<a href='index.jsp'>Home</a>");
}else{
	out.println("Failed");
	out.println("<a href='index.jsp'>Home Page</a>");
}

%>