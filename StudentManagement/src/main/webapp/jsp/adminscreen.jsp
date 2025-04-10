<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management App</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
	font-family: 'Segoe UI', sans-serif;
}

.card {
	border: none;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

.heading {
	text-align: center;
	font-weight: bold;
	color: #2c3e50;
	margin-bottom: 20px;
}

.enroll {
	background-image: url("images/addstudent.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	padding-top: 30px;
}

.view {
	background-image: url("images/viewstudent.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	padding: 30px 10px;
}

form {
	background: rgba(255, 255, 255, 0.95);
	padding: 20px;
	border-radius: 15px;
}

.btn-outline-primary:hover,
.btn-outline-success:hover,
.btn-outline-danger:hover {
	color: white !important;
}

.navbar-custom {
	background-color: #f8f9fa;
	padding: 10px 20px;
	border-bottom: 2px solid #007bff;
}

table th, table td {
	vertical-align: middle;
}

marquee h1 {
	font-size: 1.2rem;
	font-weight: bold;
}
</style>

<script>
function fees() {
	document.fn.action = "/fees";
	document.fn.submit();
}
function batch() {
	document.fn.action = "/batch";
	document.fn.submit();
}
function remove() {
	document.fn.action = "/remove";
	document.fn.submit();
}
</script>
</head>

<body>

	<div class="container-fluid">
		<!-- Navbar -->
		<nav class="navbar-custom d-flex justify-content-between align-items-center mb-3">
			<img src="images/OIP.jpg" width="100" height="50">
			<div>
				<a href="#enroll" class="btn btn-outline-primary mx-1">Enroll Student</a>
				<a href="#view" class="btn btn-outline-primary mx-1">View Student</a>
				<a href="/" class="btn btn-outline-danger mx-1">Logout</a>
			</div>
		</nav>

		<!-- Enroll Section -->
		<section class="enroll" id="enroll">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8">
						<div class="card p-3">
							<h3 class="heading">Student Enrollment Form</h3>
							<form action="enroll_student" method="post">
								<div class="row mb-3">
									<div class="col-md-6">
										<input type="text" name="studentFullName" placeholder="Full Name" class="form-control" required>
									</div>
									<div class="col-md-6">
										<input type="email" name="studentEmail" placeholder="Email" class="form-control" required>
									</div>
								</div>

								<div class="row mb-3">
									<div class="col-md-6">
										<input type="number" name="studentAge" placeholder="Age" class="form-control" required>
									</div>
									<div class="col-md-6">
										<input type="text" name="studentCollegeName" placeholder="College Name" class="form-control" required>
									</div>
								</div>

								<div class="row mb-3">
									<div class="col-md-6">
										<input type="number" name="feesPaid" placeholder="Fees Paid" class="form-control" required>
									</div>
									<div class="col-md-6">
										<label class="form-label d-block">Student Course:</label>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="studentCourse" value="Java" checked>
											<label class="form-check-label">Java</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="studentCourse" value="Python">
											<label class="form-check-label">Python</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="studentCourse" value="Testing">
											<label class="form-check-label">Testing</label>
										</div>
									</div>
								</div>

								<div class="row mb-3">
									<div class="col-md-6">
										<select name="batchMode" class="form-select" required>
											<option value="">Select Batch Mode</option>
											<option value="Online">Online</option>
											<option value="Offline">Offline</option>
										</select>
									</div>
									<div class="col-md-6">
										<select name="batchNumber" class="form-select" required>
											<option value="">Select Batch Number</option>
											<c:forEach var="i" begin="160" end="165">
												<option value="FDJ-${i}">FDJ-${i}</option>
												<option value="REG-${i}">REG-${i}</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="text-center">
									<input type="submit" value="Submit" class="btn btn-primary">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- View Section -->
		<section class="view mt-3" id="view">
			<div class="text-center mb-2">
				<form action="search" class="d-inline-block">
					<select name="batchNumber" class="form-select d-inline w-auto border border-primary">
						<option value="#">Select Batch Number</option>
						<option value="FDJ-160">FDJ-160</option>
						<option value="REG-160">REG-160</option>
						<option value="FDJ-161">FDJ-161</option>
						<option value="REG-161">REG-161</option>
					</select>
					<button class="btn btn-outline-primary">Search</button>
				</form>
				<marquee><h1 style="color: red;">${message}</h1></marquee>
			</div>

			<h3 class="text-center text-dark mb-3">Student Details</h3>

			<form name="fn" method="post">
				<div class="table-responsive px-3">
					<table class="table table-bordered table-hover align-middle">
						<thead class="table-light">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Email</th>
								<th>Age</th>
								<th>College</th>
								<th>Course</th>
								<th>Batch</th>
								<th>Mode</th>
								<th>Fees</th>
								<th>Select</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${data}" var="s">
								<tr>
									<td>${s.studentId}</td>
									<td>${s.studentFullName}</td>
									<td>${s.studentEmail}</td>
									<td>${s.studentAge}</td>
									<td>${s.studentCollegeName}</td>
									<td>${s.studentCourse}</td>
									<td>${s.batchNumber}</td>
									<td>${s.batchMode}</td>
									<td>${s.feesPaid}</td>
									<td><input type="radio" name="id" value="${s.studentId}"></td>
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-outline-success btn-sm" onclick="fees()">Pay Fees</button>
											<button type="button" class="btn btn-outline-primary btn-sm" onclick="batch()">Shift Batch</button>
											<button type="button" class="btn btn-outline-danger btn-sm" onclick="remove()">Remove</button>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</form>
		</section>
	</div>

</body>
</html>
