
<%@ page isELIgnored="false"%>
<!DOCTYPE title>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
	
</script>
<body>
	<div class="container-fluider">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="dashBoard"><b>Blah bla blah</b></a>
			<ul class="navbar-nav">
				<li class="nav-item">
				<li class="active"><a class="nav-link" href="#">About Us</a></li>
				<li class="nav-item"><a class="nav-link" href="viewStudents">Services</a></li>
				<li class="nav-item"><a class="nav-link" href="viewStudents">Logout</a></li>
			</ul>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 ">
					<div class="panel panel-primary">
						<div class="panel-heading">Add TODO</div>
						<div class="panel-body">
							<form:form method="post" modelAttribute="todo">
								<form:hidden path="id" />
								<fieldset class="form-group">
									<form:label path="description">Description</form:label>
									<form:input path="description" type="text" class="form-control" required="required" />
									<form:errors path="description" cssClass="text-warning" />
								</fieldset>
								<fieldset class="form-group">
									<form:label path="targetDate">Target Date</form:label>
									<form:input path="targetDate" type="text" class="form-control" required="required" />
									<form:errors path="targetDate" cssClass="text-warning" />
								</fieldset>
								<button type="submit" class="btn btn-success">Save</button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>