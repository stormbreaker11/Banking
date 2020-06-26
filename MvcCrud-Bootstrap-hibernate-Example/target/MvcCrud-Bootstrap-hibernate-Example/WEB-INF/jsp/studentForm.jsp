<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE title>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
	
</script>


<title>Add player</title>
</head>
<style>
h3 {
	postion: absolute;
	left: 10px;
}
</style>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="dashBoard"><b>Goal.com</b></a>
		<ul class="navbar-nav">
			<li class="nav-item">
			<li class="active"><a class="nav-link" href="#">Add player</a></li>
			<li class="nav-item"><a class="nav-link" href="viewStudents">View player</a></li>
		</ul>
	</nav>
	<br>
	<div class="container">
		<h3>
			<b>Add player</b>
		</h3>
		<form:form class="form-horizontal" data-toggle="validator" role="form"  modelAttribute="student"
		enctype="multipart/form-data" name="signform">
			<div class="form-group">
				<label class="control-label col-sm-2">Name:</label>
				<div class="col-sm-4">
					<form:input path="name" type="text" pattern="^[a-zA-Z\s]+$" data-error="Please provide your name." class="form-control"
						placeholder="Student Name" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Image:</label>
					<div class="col-sm-4">
						<input type="file" path="content"  name="file"class="custom-file-input" id="customFile"> <label class="custom-file-label" for="customFile">Add Image</label>
					</div>
				</div>
				<%-- <div class="form-group">
				<label class="control-label col-sm-2">RollNo.</label>
				<div class="col-sm-4">
					<form:input path="rollNo" type="text" maxlength="3" class="form-control" data-error="Please provide your No:" 
					placeholder="Roll No:" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div> --%>
				<div class="form-group">
					<label class="control-label col-sm-2" for="goals">Goals:</label>
					<div class="col-sm-4">
					<form:input  class="form-control" type="text" path="goals" data-error="Invalid Characters" placeholder="Goals"/>
					</div>
				</div>
					<div class="form-group">
					<label class="control-label col-sm-2" for="goals">Assists:</label>
					<div class="col-sm-4">
					<form:input  class="form-control" type="text" path="playerStats.assists" 
					data-error="Invalid Characters" placeholder="Goals"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" >Man of the Match:</label>
					<div class="col-sm-4">
					<form:input  class="form-control" type="text" path="playerStats.manOfTheMatch" 
					data-error="Invalid Characters" placeholder="Man of the match"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" >Ballon D'Or:</label>
					<div class="col-sm-4">
					<form:input  class="form-control" type="text" path="playerStats.ballOnDor" 
					data-error="Invalid Characters" placeholder="Ballon D'Or"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Club:</label>
					<div class="col-sm-4">
						<form:input type="text" class="form-control" 
						path="club" data-error="Invalid Email or Field is Empty" placeholder="Club"
							required="required" />
						<div style="color: red" class="help-block with-errors"></div>
					</div>
				</div>
		
				<div class="form-group">
					<label class="control-label col-sm-2">National:</label>
					<div class="col-sm-4">
						<form:select id="country" path="nationalTeam" class="form-control">
							<form:option value="select">select</form:option>
							<form:option value="Argentina">Argentina</form:option>
							<form:option value="india">India</form:option>
							<form:option value="Brazil">Brazil</form:option>
							<form:option value="Portugal">Portugal</form:option>
							<form:option value="other">Other</form:option>
						</form:select>
						<div style="color: red" class="help-block with-errors"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-12">
						<button align="center" type="submit" class="btn btn-outline-primary" style="width: 150px">Submit</button>
					</div>
				</div>
				</div>
				
		</form:form>
		
	</div>	
</body>
</html>