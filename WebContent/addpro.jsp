
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
</head>
<body>
<form action="addProDb.jsp" method="post">
<table Style="margin-left:40%;margin-top:120px; padding:10px">
<tr><th color="#FF69B4" colspan="2"><font size="5px">Add Product From Here</font></tr>
<tr>
<td><b><font color="#0000" font size="4">Item Index Number</font></b></td><td><input type="number" name="index" required/></td></tr>
<tr><td><b><font color="#0000" font size="4">Item name</font></b></td><td><input type="text" name="item" /></td></tr>
<tr><td><b><font color="#0000" font size="4">Category</font></b></td><td><input type="text" name="cat" required/></td></tr>
<tr><td><b><font color="#0000" font size="4">Company</font></b></td><td><input type="text" name="cmp" required/></td></tr>
<tr><td><b><font color="#0000" font size="4">Price</font></b></td><td><input type="number" name="price" required/></td></tr><br>
</table> 
<input type="submit" value="Add Product" style="border-width:2px solid rgb(80,100,100);padding:5px;font-size:16px;font-weight:bolder;border-radius:15px;background-color:black;color:white;margin-left:700px"/>
</form>

</body>
</html>