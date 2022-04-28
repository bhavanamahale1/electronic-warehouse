<%@ include file="dbConn.jsp" %>
<%
String index=request.getParameter("index");
String qr="delete from product where itemno=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,index);
int i=ps.executeUpdate();
if(i>0)
{%>
	<h1><center>Record Deleted</center></h1>
	<%
}
else
{%>
	<h1><center>Record Not Deleted</center></h1>
<%
}
%>