<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Full Stats</title>
</head>
<style>
.bio {
	margin-right: 400px;
}

img {
	position: absolute;
	width: 350px;
	left: 1050px;
}

h1 {
	background-color: black;
	color: white;
}

th {
	width: 230px;
	padding: 5px;
}

td {
	width: 180px;
}
</style>
<body>
	<div class="container-fluider">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a class="navbar-brand" href="dashBoard"><b>Goal.com</b></a></nav>
		<c:forEach var="student" items="${list}">
			<br>
			<h3>${student.name}</h3>
			<td width="50px"><img src="${pageContext.request.contextPath}/download/${student.rank}.html"> <c:forEach var="list2" items="${list2}">
					<br>
					<div class="bio">
						<p>${list2.bio}</p>
					</div>
					<table>
						<tr>
							<th>National Team</th>
							<th>:</th>
							<td>${student.nationalTeam}</td>
						</tr>
						<tr>
							<th>Club</th>
							<th>:</th>
							<td>${student.club}</td>
						</tr>
						<tr>
							<th>Goals</th>
							<th>:</th>
							<td>${student.goals}</td>
						</tr>
						<tr>
							<th>Ballon D'Or</th>
							<th>:</th>
							<td>${list2.ballOnDor}</td>
						</tr>
						<tr>
							<th>Assists</th>
							<th>:</th>
							<td>${list2.assists}</td>
						</tr>
						<tr>
							<th>Man of the Match</th>
							<th>:</th>
							<td>${list2.manOfTheMatch}</td>
						</tr>
						<%-- 
<h5>Goals: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${student.goals}</h5>
<h5>Ballon D'Or: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${list2.ballOnDor}</h5>
<h5>Assists: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${list2.assists}</h5>
<h5>Man of the Match: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${list2.manOfTheMatch}</h5> --%>
					</table>
				</c:forEach>
		</c:forEach>
	</div>
</body>
</html>