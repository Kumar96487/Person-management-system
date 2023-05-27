<%@ include file="navbar.jsp" %>
<%@ include file="connection.jsp" %>
<html>
  <body>
  <div class='dv'>
<%
String pid=request.getParameter("pid");
PreparedStatement preparedStatement1=cn.prepareStatement("select * from  personinfo where pid=? ");
preparedStatement1.setString(1, pid);
ResultSet rst=preparedStatement1.executeQuery();
if(rst.next())
{
	%>
	<label class='lah' style="color:red">Person record with id <%=pid%> already exists </label>
	<% 
}
else{
	PreparedStatement preparedStatement=cn.prepareStatement("insert into personinfo values(?,?,?,?,?,?)");
	preparedStatement.setString(1,pid);
	preparedStatement.setString(2,request.getParameter("firstname"));	
	preparedStatement.setString(3,request.getParameter("lastname"));
	preparedStatement.setString(4,request.getParameter("city"));	
	preparedStatement.setString(5,request.getParameter("mobile"));
	preparedStatement.setString(6,request.getParameter("emailid"));
	preparedStatement.executeUpdate();
	%>
		<label class='lah' style="color:green">Person record has been inserted successfully </label>
	<%
}
%>
  
  </div>
  </body>
</html>