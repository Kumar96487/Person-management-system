<%@ include file="navbar.jsp"%>
<%@ include file="connection.jsp"%>
<html>
<body>
	<div class='container'>
		<div class='card max-auto'>
			<div class='card-body'>
				<%
					Statement st = cn.createStatement();
					ResultSet rst = st.executeQuery("select * from personinfo");
				%>
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th>Person Id</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>City</th>
							<th>Mobile No</th>
							<th>Email Id</th>
						</tr>
					</thead>
					<tbody>
						<%
						while(rst.next())
						{
							%>
							<tr>
								<td><%=rst.getString(1) %></td>
								<td><%=rst.getString(2) %></td>
								<td><%=rst.getString(3) %></td>
								<td><%=rst.getString(4) %></td>
								<td><%=rst.getString(5) %></td>
								<td><%=rst.getString(6) %></td>
							</tr>
							<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
