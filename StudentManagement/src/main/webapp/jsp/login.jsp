<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<!-- Google Fonts (Optional) -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

<!-- Embedded Custom CSS -->
<style>
    body, html {
        height: 100%;
        margin: 0;
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #00c6ff, #0072ff);
    }

    .gradient-custom {
        background: transparent;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        background: rgba(0, 0, 0, 0.85);
        border: none;
        border-radius: 1rem;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
    }

    .form-control {
        background-color: #1e1e1e;
        border: none;
        border-radius: 0.375rem;
        color: white;
    }

    .form-control:focus {
        background-color: #2c2c2c;
        color: white;
        border-color: #00c6ff;
        box-shadow: 0 0 0 0.2rem rgba(0, 198, 255, 0.25);
    }

    .form-label {
        color: #ccc;
    }

    .btn-outline-light {
        transition: all 0.3s ease-in-out;
    }

    .btn-outline-light:hover {
        background-color: #00c6ff;
        color: white;
        border-color: #00c6ff;
    }

    marquee {
        padding: 5px 0;
        font-size: 1.2rem;
        font-weight: 600;
    }
</style>

</head>

<body>
	<marquee class="bg-primary">
		<h2 class="text-white">${login_fail}</h2>
	</marquee>

	<section class="gradient-custom">
		<div class="container py-5">
			<div class="row d-flex justify-content-center align-items-center">
				<div class="col-12 col-md-8 col-lg-6 col-xl-5">
					<div class="card text-white">
						<div class="card-body p-5 text-center">
							<div class="mb-md-2 mt-md-2 pb-2">
								<form action="login">
									<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
									<p class="text-white-50 mb-2">Please enter your login and password!</p>

									<div class="form-outline form-white mb-4">
										<input type="text" id="typeEmailX" name="username"
											class="form-control form-control-lg" />
										<label class="form-label" for="typeEmailX">Username</label>
									</div>

									<div class="form-outline form-white mb-4">
										<input type="password" id="typePasswordX" name="password"
											class="form-control form-control-lg" />
										<label class="form-label" for="typePasswordX">Password</label>
									</div>

									<button class="btn btn-outline-light btn-lg" type="submit">Login</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>
