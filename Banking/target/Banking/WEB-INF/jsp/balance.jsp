
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Balance|BalahBlahBlah</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 ">
				<div class="panel panel-primary">
					<div class="panel-heading">Passbook</div>
					<div class="panel-body">
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th>Name</th>
									<th>Available Balance</th>
									<th>Amount</th>
								</tr>
							</thead>
							<c:forEach var="user" items="${list}">
								<tbody>
									<tr>
										<td>${user.rank}</td>
										<td>${user.name}</td>
										<td>${user.goals}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>