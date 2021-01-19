<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email =session.getAttribute("email").toString();
String securityQuestion=request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
int check=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		check = 1;
		st.executeUpdate("update users set securityQuestion='"+securityQuestion+"' and answer='"+answer+"' where email='"+email+"'");
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}

}
catch(Exception e)

{
	System.out.println(e);
	response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");

}
%>