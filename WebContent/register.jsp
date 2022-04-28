<%@ include file="dbConn.jsp" %>
<% 
String name = request.getParameter("user");
String password = request.getParameter("pass");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String address=request.getParameter("address");
String state=request.getParameter("state");

try {
    String qr="insert into user(uname,password,mobile,email,state,address) values(? ,? ,? ,? ,? ,?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, name);
	ps.setString(2, password);
	ps.setString(3, mobile);
	ps.setString(4, email);
	ps.setString(6, address);
	ps.setString(5, state);
	int i = ps.executeUpdate();
	con.close();
	if(i>0){
		
		response.sendRedirect("login.html");	
	}
	else{
		%>
		<h1><center>Not Inserted..</center></h1>
	<%
	}
} catch (Exception e) {
	e.printStackTrace();
}

%>