<%@ include file="dbConn.jsp"%>
	<%response.setContentType("text/html");
		%>
		<table style="text-align:center; border-spacing: 5px;">
  <thead>
    <tr>
      <th scope="col">Index No</th>
      <th scope="col">Item Name</th>
      <th scope="col">Category</th>
      <th scope="col">Company</th>
     <th scope="col">Price</th>
            <th scope="col">Delete Product</th>
            <th scope="col">Update Product</th>
        
    </tr>
  </thead>
  <tbody>
  
		<%
String qr="select * from product";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do
	{
		int index=rs.getInt("itemno");
		String name=rs.getString("name");
		String cat=rs.getString("category");
		String cmp=rs.getString("company");
		String price=rs.getString("price");
		%>
		<tr>
	<td><%=index%></td>
		<td><%=name %></td>
		<td><%=cat %></td>
		<td><%=cmp %></td>
		<td><%=price %></td>
		<td><a href="Delete.jsp?index=<%=index%>">Delete</a></td>
		<td><a href="Updatepro.jsp?index=<%=index%>">Update</a></td>
		</tr>	
		<%
	}while(rs.next());
}
  
else
{
	out.println("no records found");
}

con.close();
%>
	</tbody>
	</table>	
