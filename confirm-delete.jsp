<%@ include file="connection.jsp"%>
<html>
<head>
    
</head>

<body>
	<%
		String pid = request.getParameter("pid");
		PreparedStatement preparedStatement1 = cn.prepareStatement("select * from  personinfo where pid=? ");
		preparedStatement1.setString(1, pid);
		ResultSet rst = preparedStatement1.executeQuery();
		if (rst.next())
		{
		%>
			<%@ include file="navbar.jsp"%>
			<form action="delete-record.jsp">
			<input type="hidden" name="pid" value="<%=rst.getString(1)%>">
				<table class='tar' border="1" style="background-color:purple;">
					<tr class="tr">
						<th colspan="2" style="text-align: center">Enter Person Details</th>
					</tr>
					<tr>
						<th align="left">Person Id</th>
						<td><%=rst.getString(1)%></td>
					</tr>
					<tr>
					<th align="left">Person First Name</th>
					<td><%=rst.getString(2)%></td>
				</tr>
				<tr>
					<th align="left">Person Last Name</th>
					<td><%=rst.getString(3)%></td>
				</tr>
				<tr>
					<th align="left">Person City</th>
					<td><%=rst.getString(4)%></td>
				</tr>
				<tr>
					<th align="left">Person Mobile No</th>
					<td><%=rst.getString(5)%></td>
				</tr>
				<tr>
					<th align="left">Person Email Id</th>
					<td><%=rst.getString(6)%></td>
				</tr>
				<td class="tdp" colspan="2" align="center">
				<button class="btn" style="background-color: red;">Confirm Delete</button>
				<input type="button" class="btn" onclick="history.back()" value="Cancel">
				 </td>
				<tr>
			</table>
			</form>
			<%
			}
		else
	    {
	    	%>
	    	<jsp:include page="delete-person.jsp" />
	    	<div class='dvv'>
	    	   <label class='msg'>Person record with id <%=pid%> does not exits</label>
	    	</div>
	    	<%
	    }
			%>
	</body>
</html>
