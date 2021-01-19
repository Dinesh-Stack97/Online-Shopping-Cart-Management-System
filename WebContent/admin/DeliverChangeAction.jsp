<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String status = "Processing";

try
{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
st.executeUpdate("update cart inner join product set status='"+status+"' where product_id=product.id and cart.orderDate is not NULL");
response.sendRedirect("cancelOrders.jsp?msg=Delivered");


}
catch(Exception e)
{
	System.out.println(e);
}

%>
