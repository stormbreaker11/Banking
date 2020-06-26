
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
<style>
</style>
<body>
	<div class="container-fluider">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="dashBoard"><b>Central Bank</b></a>
			<ul class="navbar-nav">
				<li class="nav-item">
				<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
				<li class="active"><a class="nav-link" href="viewStudents">Services</a></li>
				<li class="nav-item"><a class="nav-link" href="">Blog</a></li>
				<li class="nav-item"><a class="nav-link" href="">${name}</a></li>
				<div>
					<li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
				</div>
			</ul>
		</nav>
		<br> <br> <br>
		<div class="container">
			<div class="row">
				<div class="col-sm-4 ">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<b>Get Balance</b>
							</h5>
							<p class="card-text">Get your complete Account details, ledger, Available Balance.</p>
							<a href="/Banking/balance" class="btn btn-dark">Pass Book</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<b>Transfer Money</b>
							</h5>
							<p class="card-text">Transfer money your to another account to any bank.</p>
							<a href="#!" class="btn btn-dark">Transfer Money</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<b>Mini Statement</b>
							</h5>
							<p class="card-text">Get Mini Statement of your last limited transcations.</p>
							<a href="#!" class="btn btn-dark">Mini Statement</a>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<b>Transaction History</b>
							</h5>
							<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
							<a href="#!" class="btn btn-dark">Transaction History</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<b>Loans</b>
							</h5>
							<p class="card-text">Apply for loans, check loan status, Request loans</p>
							<a href="#!" class="btn btn-dark">Loans</a>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<b>Settings</b>
							</h5>
							<p class="card-text">Security and privacy settings, change mail and Password.</p>
							<a href="#!" class="btn btn-dark">Settings</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>