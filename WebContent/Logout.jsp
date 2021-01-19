<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<script>
if(window.history.forwart(1)!=null)
	window.history.forward(1);
</script>
</head>
<body>
<%@ page language="java" %>
<table width="993" height="102" border="0">
  <tr>
    <td width="251" height="96"><img src="head.png" width="251" height="88" alt="Logo" /></td>
    <td width="726" class="right">24X7 Customer Support - <a href="about.jsp">About us</a> | <a href="signup.jsp">Create New User</a> |
      <% if(session.getAttribute("email")==null) {
			%>
      <a href="login.jsp">Login</a>
      <%} else {
				%>
      <a href="logout.jsp">Logout</a>
      <%}%></td>
  </tr>
</table>
<hr />
<% if(session.getAttribute("email")!=null) {
	session.invalidate();
	out.println("Successfully Logged out.");
	%>
    <script type="text/javascript">
function Redirect()
{
    window.location="signup.jsp";
}
document.write("You will be redirected to main page in a few sec.");
setTimeout('Redirect()', 5000);
</script>
<%
}
else
{%>
You're already Logged out. 
Click <a href="signup.jsp">here</a> to go to the home page.
<%}%>
</div>

</body>
</html>