
<h1 align="center">Welcome to Admin Page</h1>

<%
String name=(String)session.getAttribute("name");
%>
<h1 style="margin-left:550px;margin-top:50px"><%="Welcome "+name%></h1>
<h1 style="font-size:30px;color:black;margin-left:550px">Add Product</h1>
<a href=addpro.jsp style="margin-left:550px;font-size:24px;font-family:Times New Roman">Add Product</a><br><br>
<h1 style="font-size:30px;color:black;margin-left:550px">Delete/Update Product</h1>
<a href=AllPro.jsp style="margin-left:550px;font-size:24px;font-family:Times New Roman" >Show Product</a><br><br>
<h1 style="font-size:30px;color:black;margin-left:550px">Logout</h1>
<a href=logout.jsp style="margin-left:550px;font-size:24px;font-family:Times New Roman" >LogOut</a>		
