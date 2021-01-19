<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%


try
{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();


st.executeUpdate("delete from cart  where status='Cancel'  and cart.orderDate is not NULL");
response.sendRedirect("cancelOrders.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
}

%>















