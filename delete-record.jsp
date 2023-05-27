<%@ include file="connection.jsp"%>
<%@ include file="navbar.jsp"%>
<html>
<body>
	<%
		String pid = request.getParameter("pid");
		PreparedStatement preparedStatement = cn.prepareStatement("delete from personinfo where pid=?");
		preparedStatement.setString(1,pid);
		preparedStatement.executeUpdate();
	%>
	<div class="dv">
	<label class="lah" style="color:red"> Person record has been deleted successfully </label>
	</div>
	</body>
</html>
