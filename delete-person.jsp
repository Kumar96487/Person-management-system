<%@ include file="navbar.jsp" %>
<html>
  <body>
  	<form action="confirm-delete.jsp">
  		<table class="tai">
  		<tr>
  		<td class="tdp"> Enter person id </td>
  		<td class="tdp"> <input type='number' name="pid" class="tb" required> </td>
  		<td class="tdp"><button class="btn" style="background-color: red;">Delete Record</button></td>
  		</tr>
  		</table>
  	</form>
  </body>
</html>