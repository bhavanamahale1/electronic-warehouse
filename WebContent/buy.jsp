<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buy</title>

		<style>
			.invoice-box {
				max-width: 800px;
				margin: auto;
				padding: 30px;
				border: 1px solid #eee;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
				font-size: 16px;
				line-height: 24px;
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				color: #555;
			}

			.invoice-box table {
				width: 100%;
				line-height: inherit;
				text-align: left;
			}

			.invoice-box table td {
				padding: 5px;
				vertical-align: top;
			}

			.invoice-box table tr td:nth-child(2) {
				text-align: right;
			}

			.invoice-box table tr.top table td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.top table td.title {
				font-size: 45px;
				line-height: 45px;
				color: #333;
			}

			.invoice-box table tr.information table td {
				padding-bottom: 40px;
			}

			.invoice-box table tr.heading td {
				background: #eee;
				border-bottom: 1px solid #ddd;
				font-weight: bold;
			}

			.invoice-box table tr.details td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.item td {
				border-bottom: 1px solid #eee;
			}

			.invoice-box table tr.item.last td {
				border-bottom: none;
			}

			.invoice-box table tr.total td:nth-child(2) {
				border-top: 2px solid #eee;
				font-weight: bold;
			}

			@media only screen and (max-width: 600px) {
				.invoice-box table tr.top table td {
					width: 100%;
					display: block;
					text-align: center;
				}

				.invoice-box table tr.information table td {
					width: 100%;
					display: block;
					text-align: center;
				}
			}
			.invoice-box.rtl {
				direction: rtl;
				font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
			}

			.invoice-box.rtl table {
				text-align: right;
			}

			.invoice-box.rtl table tr td:nth-child(2) {
				text-align: left;
			}
		</style>		
</head>
<body style="background-color:Bisque">
<%
String index=request.getParameter("index");
String item_name=request.getParameter("name");
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String price=request.getParameter("price");
%>

<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td>
									Invoice #: 123<br />
									<p id="date">Date:</p> <br />
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
							
								<td>
									Address: <input type="textarea" placeholder="Address here"><br />
									Colony: <input type="text" placeholder="colony"><br/>
									Pin Code: <input type="number" placeholder="pincode">
								</td>

								<td>
									Name: <input type="text" placeholder="Enter your name"><br />
									E-mail: <input type="email" placeholder="E-mail"><br />
									Mobile: <input type="number" placeholder="Mobile No.">
								</td>
							</tr>
						</table>
					</td>
				</tr>
		
				<tr><td>Index Number: <%=index %></td></tr>
				<tr><td>Item Name: <%=item_name %></td><td>Quantity</td></tr>
				<tr><td>Category: <%=cat %></td><td><input type="number" id="quant" placeholder="quantity" ></td></tr>
				<tr><td>Company: <%=cmp %></td><td><input type="button" value="OK" onclick="load_function()"></td></tr>

				<tr class="heading">
					<td>Payment Method</td>
					<td>COD</td>
				</tr>

				<tr class="details">
					<td>Amount</td>

					<td><%=price %>/unit</td>
				</tr>

				<tr class="heading">
					<td>Item</td>

					<td>Price</td>
				</tr>

				<tr class="item">
					<td><%=item_name %></td>

					<td id="total_cost"></td>
				</tr>

				<tr class="item">
					<td>GST(including all taxes)</td>

					<td id="tax"></td>
				</tr>

			
				<tr class="total">
					<td>Total</td>
					<td id="total"></td>
				</tr>
			
			</table>
			<div><center><input type="button" onclick="show()" value="Pay Now" style="font-size:16px"></center></div>
		</div>
		
		
<script>
var dt=new Date();
y = dt.getFullYear();
m = dt.getMonth() + 1;
d = dt.getDate();
document.getElementById("date").innerHTML = d+"/"+m+"/"+y;


function load_function(){
	var quant=parseInt(document.getElementById("quant").value);
	 var total=quant*<%=price%>;
	 document.getElementById("total_cost").innerHTML =total;
	 var taxes=(total/100)*3;
	document.getElementById("tax").innerHTML = taxes+'Rs.';	
	document.getElementById("total").innerHTML = total+taxes+'/Rs.Only';
	
}

function show(){
	alert("Thankyou to visit our website..");
}
</script>
</body>
</html>