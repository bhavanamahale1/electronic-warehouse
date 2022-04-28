<%@include file="dbConn.jsp" %>
<%
int index=Integer.parseInt(request.getParameter("index"));
String name=request.getParameter("item");
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
int price=Integer.parseInt(request.getParameter("price"));
String qr="insert into product(name,category,company,itemno,price) values(?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setInt(4, index);
ps.setString(1, name);
ps.setString(2, cat);
ps.setString(3, cmp);
ps.setInt(5, price);
int i=ps.executeUpdate();
if(i>0)
{%>
	<h1><center>Record Added</center></h1>
	<%
}
else
{ %>
	<h1><center>Record Not Added</center></h1>
<% 
}
con.close();
%>
