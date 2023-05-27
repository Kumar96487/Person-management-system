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
			<form action="update-record.jsp">
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
					<th align="left">Edit First Name</th>
					<td><input type="text" class="tb" name="firstname" value="<%=rst.getString(2)%>"></td>
				</tr>
				<tr>
					<th align="left">Edit Last Name</th>
					<td><input type="text" class="tb"  name="lastname" value="<%=rst.getString(3)%>"></td>
				</tr>
				<tr>
					<th align="left">Edit City</th>
					<td><input type="text" class="tb"  name="city" value="<%=rst.getString(4)%>"></td>
				</tr>
				<tr>
					<th align="left">Edit Mobile No</th>
					<td><input type="text" class="tb"  name="mobile" value="<%=rst.getString(5)%>"></td>
				</tr>
				<tr>
					<th align="left">Edit Email Id</th>
					<td><input type="text" class="tb"  name="emailid" value="<%=rst.getString(6)%>"></td>
				</tr>
				<td class="tdp" colspan="2" align="center">
				<button class="btn" style="background-color: lime;">Update Record</button>
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
	    	<jsp:include page="edit-person.jsp" />
	    	<div class='dvv'>
	    	   <label class='msg'>Person record with id <%=pid%> does not exits</label>
	    	</div>
	    	<%
	    }
			%>
	</body>
</html>
