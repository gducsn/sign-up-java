<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
<link rel="icon" type="image/x-icon"
	href="https://img.icons8.com/external-inipagistudio-mixed-inipagistudio/344/external-registration-form-online-therapy-inipagistudio-mixed-inipagistudio.png
">

<title>Registration Form</title>
</head>
<body>


	<div class="d-flex justify-content-center p-5 ">
		<form class="w-50 p-3" action="<%=request.getContextPath()%>/success"
			method="post">
			<div class="form-group">
				<label for="exampleInputPassword1">First Name</label> <input
					required type="text" class="form-control" placeholder="First Name"
					name="firstname">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Last Name</label> <input required
					type="text" class="form-control" placeholder="Last Name"
					name="lastname">
			</div>
			<div class="form-group">
				<label for="validationCustomUsername" class="form-label">Username</label>
				<div class="input-group has-validation">
					<span class="input-group-text" id="inputGroupPrepend">@</span> <input
						name="username" type="text" class="form-control"
						id="validationCustomUsername" aria-describedby="inputGroupPrepend"
						required>
					<div class="invalid-feedback">Please choose a username.</div>
				</div>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					required name="email" type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email"> <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					name="password" type="password" class="form-control"
					id="exampleInputPassword1" placeholder="Password" required>
			</div>
			<button type="submit" class="btn btn-primary btn-dark">Submit</button>

		</form>

	</div>



</body>
</html>