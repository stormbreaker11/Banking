
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Balance Enq</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">

</script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 ">
				<div class="panel panel-primary">
					<div class="panel-heading">Balance Enquiry</div>
					<div class="panel-body">
						
							<form:form  modelAttribute="balance" action="/Banking/enquiry">
								
								<fieldset class="form-group">
									<form:label path="id">Account No: </form:label>
									<form:input name="userID" path="id" type="text" class="form-control" required="required" />
									<form:errors path="id" cssClass="text-warning" />
								</fieldset>
								
								<button type="submit" class="btn btn-success">Enquiry</button>
								
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
</body>
</html>