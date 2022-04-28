<% 
String name=request.getParameter("name");
String pwd=request.getParameter("pswrd");
if(name.equals("yahoo")&&pwd.equals("450445"))
{
	session.setAttribute("name", name);
	response.sendRedirect("adminhome.jsp");
}
else
{%>
	<h2><center>Bad Login Credentials!!</center></h2>
	<%
}
%>

