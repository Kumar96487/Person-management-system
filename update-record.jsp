<%@ include file="navbar.jsp" %>
<%@ include file="connection.jsp" %>
<html>
  <body>
  <div class='dv'>
  <% 
	PreparedStatement preparedStatement=cn.prepareStatement("update personinfo set firstname=?,lastname=?,city=?,mobile=?,emailid=? where pid=?");
	preparedStatement.setString(6,request.getParameter("pid"));	
	preparedStatement.setString(1,request.getParameter("firstname"));	
	preparedStatement.setString(2,request.getParameter("lastname"));
	preparedStatement.setString(3,request.getParameter("city"));	
	preparedStatement.setString(4,request.getParameter("mobile"));
	preparedStatement.setString(5,request.getParameter("emailid"));
	preparedStatement.executeUpdate();
	%>
		<label class='lah' style="color:green">Person record has been updated successfully </label>
  
  </div>
  </body>
</html>