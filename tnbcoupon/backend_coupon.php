<?php
session_start();
if (isset($_SESSION['type'])){	
	?>
<!doctype html>
<html lang="en">
<head>
  	<title>Coupon Code Generator</title>

  	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- Sweetalert 2 CSS -->
	<link rel="stylesheet" href="assets/plugins/sweetalert2/sweetalert2.min.css">
  	
  	<!-- Page CSS -->
  	<link rel="stylesheet" href="assets/css/styles.css">
</head>
  
<body>
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
   <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="logout.php">Logout <span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
  </div>
</nav>
   
	<div class="container">

		<br><br>

	    <h1>Generate Coupon Code</h1>

	    <br><br>
	    
	    <div class="row">
	    	<div class="col-md-6">
	    		<h3></h3>

			    <form action="generate-coupon.php" id="generateCouponCodeForm">
			    	<div class="form-group">
					    <label for="email">Coupon Code</label>
					    <input class="form-control" type="text" name="coupon-code" readonly="readonly">
				  	</div>
				  	<button type="button" class="btn btn-primary" id="btnSubmit">Generate Coupon</button>
				</form>
	    	</div>

	    	
	    </div>
	</div>

	
	<!-- Must put our javascript files here to fast the page loading -->
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- Sweetalert2 JS -->
	<script src="assets/plugins/sweetalert2/sweetalert2.min.js"></script>
	<!-- Page Script -->
	<script src="assets/js/scripts.js"></script>

</body>
  
</html>
<?php
}
else{
	header("location:index.php");
}
?>