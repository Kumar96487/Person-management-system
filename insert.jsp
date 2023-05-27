<%@ include file="navbar.jsp"%>
<html>
<head>
	<link href='CSS/style.css' rel='stylesheet'>
</head>
 <body>
	<div class='container'>
		<div class='card col-md-12 max-auto'>
			<div class='card-body'>
				<form action="save-record.jsp" method="post">
					<div class='row'>
						<div class='form-group col-md-10'>
							<label for='pid' class='la'>Enter Person Id</label><span> *</span>
							<input type='text' name='pid' id='pid' class='form-control' required>
						</div>
					</div>
					<div class='row'>
						<div class='form-group col-md-5'>
							<label for='firstname' class='la'>Enter First Name </label><span> *</span>
							<input type='text' name='firstname' id='firstname' class='form-control' required>
						</div>
						<div class='form-group col-md-5'>
							<label for='lastname' class='la'>Enter Last Name </label><span> *</span>
							<input type='text' name='lastname' id='lastname' class='form-control' required>
						</div>
					</div>
					<div class='row'>
						<div class='form-group col-md-5'>
							<label for='city' class='la'>Enter City </label><span> *</span>
							<input type='text' name='city' id='city' class='form-control' required>
						</div>
						<div class='form-group col-md-5'>
							<label for='mobile' class='la'>Enter Mobile NO </label><span> *</span>
							<input type='text' name='mobile' id='mobile' class='form-control' required>
						</div>
					</div>
					<div class='row'>
						<div class='form-group col-md-10'>
							<label for='emailid' class='la'>Enter Email Id</label><span> *</span>
							<input type='text' name='emailid' id='emailid' class='form-control' required>
						</div>
					</div>
					<div class='row'>
						<div class='form-group col-md-10'>
							<button class='btn btn-primary'> Save Record</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
 </body>
</html>
