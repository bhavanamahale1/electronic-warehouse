<%@ include file="dbConn.jsp" %>
<%
int itemno=Integer.parseInt(request.getParameter("index"));
int price=Integer.parseInt(request.getParameter("price"));
String name=request.getParameter("item");
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String qr="update product set name=?,category=?,company=?,price=? where itemno=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,name);
ps.setString(2,cat);
ps.setString(3,cmp);
ps.setInt(4,price);
ps.setInt(5,itemno);
int i=ps.executeUpdate();

if(i>0)
{ %>
	<h1><center>Record Updated</center></h1>
	
<%
}
else
{ %>
	<h1><center>Record Not Updated</center></h1>
	<% 
}
%>
