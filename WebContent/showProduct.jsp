<%@ include file="dbConn.jsp"%>
	<%response.setContentType("text/html");
		%>
		<html>
		<head>
		<style type="text/css">
		#searchbar{
     margin-left: 35%;
     padding:15px;
     border-radius: 10px;
   }
 
   input[type=text] {
      width: 30%;
      -webkit-transition: width 0.15s ease-in-out;
      transition: width 0.15s ease-in-out;
      font-size:20px;
   }	
   .highlight {
  background-color: blue;
}
		</style>
		</head>
		<body style="background-color:Bisque";
		 <div style="height:90px;width:100%;background-color:g;padding-top:1px">
        <h1 align="center">Available Products <a href=logout.jsp class="logout" style="margin-left:1200px;font-size:26px;text-decoration:none;color:black;"><b>Logout</b></a>
      </h1>
        </div>
        <div>
        <input id="searchbar" type="text" name="search" placeholder="Search "><button style="height:50px;font-size:20px;border-spacing:5px;" onclick="search()">Search</button>
       
        </div>
		<center><table style="text-align:center;border-spacing:5px;margin-top:50px;font-size:22px; border-collapse: collapse;" border="2"></center>
  <thead>
    <tr>
      <th scope="col">Index No</th>
      <th scope="col">Item Name</th>
      <th scope="col">Category</th>
      <th scope="col">Company</th>
     <th scope="col">Price</th>
            <th scope="col">Buy Now</th>
        
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
		<tr class="item" >
	<td ><%=index%></td>
		<td><%=name %></td>
		<td><%=cat %></td>
		<td><%=cmp %></td>
		<td ><%=price %></td>
		<td><a href="buy.jsp?index=<%=index%>&name=<%=name%>&cat=<%=cat%>&cmp=<%=cmp%>&price=<%=price%>">Buy Now</a></td>
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
	
	<script type="text/javascript">
	function search() {
		 let input = document.getElementById('searchbar').value
		    input=input.toLowerCase();
		    let x = document.getElementsByClassName('item');
		      
		    for (i = 0; i < x.length; i++) { 
		        if (!x[i].innerHTML.toLowerCase().includes(input)) {
		            x[i].style.display="none";
		        }
		        else {
		            x[i].style.display="item";                 
		        }
		    }
		  }
	
	</script>
	</body>	
	</html>
