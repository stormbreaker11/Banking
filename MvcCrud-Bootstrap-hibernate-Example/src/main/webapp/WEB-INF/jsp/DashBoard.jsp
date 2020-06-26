<!DOCTYPE html>

<html>
<head>
<title>Goal.com</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
        window.onload = function () { Clear(); }
        function Clear() {          
            var Backlen=history.length;
            if (Backlen > 0) history.go(-Backlen);
        }
</script>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="studentform.html">Goal.com</a>

		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="studentForm">Add
					player</a></li>
			<li class="nav-item"><a class="nav-link" href="viewStudents">View
					players</a></li>
		</ul>
	</nav>
	<div class="container">
		<br>
		<h3>Goal.com</h3>
		<br>
		<p>
			<strong>The Goal.com</strong> is a fully computerized system or more
			precisely a database where all the most goal scorers
		</p>
		related data can be stored, retrieved, monitored and analyzed.<br>

		Name : ${name}<br> Email : ${description}<br> id : ${id}

	</div>
	<br>


</body>
</html>