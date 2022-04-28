<%@ include file="dbConn.jsp" %>

<%
String itemno=request.getParameter("index");
%>
<h1 align="center">Update page</h1>
<center><h2 style="margin-top:50px">Product Index ID : <%=itemno%></h2></center>
<form action="Update.jsp" method="post" align="center">
<table Style="margin-left:40%;margin-top:20px; padding:10px">
<tr><th color="#FF69B4" colspan="2"><font size="5px">Update Product:</font></tr>
<tr>
<td><b><font color="#0000" font size="4">Item Index Number</font></b></td><td><input type="number" name="index" required/></td></tr>
<tr><td><b><font color="#0000" font size="4">Item name</font></b></td><td><input type="text" name="item" /></td></tr>
<tr><td><b><font color="#0000" font size="4">Category</font></b></td><td><input type="text" name="cat" required/></td></tr>
<tr><td><b><font color="#0000" font size="4">Company</font></b></td><td><input type="text" name="cmp" required/></td></tr>
<tr><td><b><font color="#0000" font size="4">Price</font></b></td><td><input type="number" name="price" required/></td></tr><br>
</table>
<input type="submit" value="Update Product" style="border-width:2px solid rgb(80,100,100);padding:5px;font-size:16px;font-weight:bolder;border-radius:15px;background-color:black;color:white;margin-left:100px"/>

</form>