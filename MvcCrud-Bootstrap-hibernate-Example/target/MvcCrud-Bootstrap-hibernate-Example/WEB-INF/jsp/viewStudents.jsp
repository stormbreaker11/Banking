<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
        window.onload = function () { Clear(); }
        function Clear() {          
            var Backlen=history.length;
            if (Backlen > 0) history.go(-Backlen);
        }
</script>
<title>View players</title>


</head>
<style>
img {
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 5px;
	width: 100px;
}
</style>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a class="navbar-brand" href="dashBoard"><b>Goal.com</b></a>
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="studentForm">Add player</a></li>
		
		<li class="nav-item">
		<li class="active"><a class="nav-link" href="viewStudents">View player</a></li>
	</ul>
	</nav>
	<div class="container-fluid">
		<br> <br>
		<h2>Most Goal Scorers</h2>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Rank</th>
					<th>Name</th>
					<th>Goals</th>
					<th>Club</th>
					<th>Nation</th>
					<th>Image</th>
					<th>Stats</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:forEach var="student" items="${list}">
				<tbody>
					<tr>
						<td>${student.rank}</td>
						<td>${student.name}</td>
						<td>${student.goals}</td>
						<td>${student.club}</td>
						<td>${student.nationalTeam}</td>
						<td width="5px"><img src="${pageContext.request.contextPath}/download/${student.rank}.html">
						<td><a class="btn btn-info" href="fullStats/${student.rank}" role="button">Full Stats</a>
						</td>
						<td><a href="editStudent/${student.rank}">Edit</a></td>
						<td><a href="delete/${student.rank}"
							onclick="if (
        		 !(confirm('Are you sure you want to delete this Player?')
        				 )
        				 ) return false">Delete</a></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	
	
</body>
</html>