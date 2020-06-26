

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE title>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
	
</script>
<style>
.move {
	position: relative;
	left: 1050px;
	top: 30px;
}
</style>
<body>
	<div class="container-fluider">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="dashBoard"><b>Blah bla blah</b></a>
			<ul class="navbar-nav">
				<li class="nav-item">
				<li class="active"><a class="nav-link" href="#">About Us</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/Banking/services.jsp">Services</a></li>
				<li class="nav-item"><a class="nav-link" href="">Blog</a></li>
				<li class="nav-item"><a class="nav-link" href="">Contact</a></li>
			</ul>
		</nav>
		<div class="col-sm-4 ">
			<br>
			<div class="move">
				<div class="card" style="width: 15rem;">
					<div class="card-body">
						<h5 class="card-title">Login In</h5>
						<div class="panel-body">
							<form:form action="/Banking/login" modelAttribute="loginProcess"
								method="POST">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label>
									<form:input type="email" class="form-control" name="uEmail"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										path="email" placeholder="Enter email" />
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label>
									<form:input type="password" path="uPassword"
										class="form-control" id="exampleInputPassword1"
										placeholder="Password" />
								</div>
								<div class="form-group form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1" /> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<p Style="color: red;">${incorrect}</p>
								<form:button type="Submit" class="btn btn-dark btn-sm btn-block">Login </form:button>
							</form:form>
						</div>
					</div>
				</div>
			</div>
			<div class="">
				<p>BlahBlahBlah, We are third largest private sector bank in
					India offering entire spectrum of financial services for personal &
					corporate banking.</p>
			</div>
			<input type=button class="btn btn-dark" value="See more">
		</div>
</body>
</html>