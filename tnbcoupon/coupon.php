<?php
session_start();
if (isset($_SESSION['type'])){	
	?>
<!doctype html>
<html lang="en">
<head>
  	<title>Welcome</title>

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

	    <h1>Fill the details with Coupon code</h1>

	    <br><br>
	    
	    <div class="row">
	    	

	    	<div class="col-md-6">
	    		
	    		<form action="use-coupon.php" id="useCouponCodeForm">
	    			<div class="form-group">
					    <label for="email">Coupon Code</label>
					    <input class="form-control" type="text" name="coupon-code">
				  	</div>
			    	<div class="form-group">
					    <label for="email">Name</label>
					    <input class="form-control" type="text" required="" name="full_name">
				  	</div>
				  	<div class="form-group">
					    <label for="email">Phone number</label>
					    <input class="form-control" type="text" required="" name="phone_no">
				  	</div>
				  	<div class="form-group">
					    <label for="email">Whatsapp Number</label>
					    <input class="form-control" type="text" name="whatsapp_no">
				  	</div>
				  	<div class="form-group">
					    <label for="email">Email Address</label>
					    <input class="form-control" type="email" name="email_address">
				  	</div>
				  	<div class="form-group">
					    <label for="email">Date Of Birth</label>
					    <input class="form-control" type="date" name="dob">
				  	</div>
				  	<div class="form-group">
					    <label for="email">Anniversary</label>
					    <input class="form-control" type="date" name="anniversary">
				  	</div>
				  	
				  	<div class="form-group">
					    <label for="email">Franchises</label>
					    <select name="franchise" class="form-control">
					    	<option></option>
					    	 <option value="DD03">M/S Diamond Enterprise Thakurpukur</option>
    <option value="DD01">M/S Diamond Enterprise Amtala</option>
    <option value="DD02">M/S Debnath</option>
    <option value="DM02">M/S Madona Confectionery</option>
    <option value="DS01">M/S Saha Confectionery</option>
    <option value="DB02">M/S M/S Bake & Flake</option>
    <option value="DO01">M/S Omkar Enterprise</option>
    <option value="DK01">M/S K.K Enterprise</option>
    <option value="DC01">M/S Cake N Bake</option>
    <option value="DS02">M/S Sunny's Cake Corner</option>
    <option value="DM01">M/S Maa Stores</option>
    <option value="DP01">M/S Pratap Delights</option>
    <option value="DG01">M/S Ganpati Enterprise</option>
    <option value="DV01">M/S Vinayak Cake Shop</option>
    <option value="DJ01">M/S Agency Jai Jaganath Cake</option>
    <option value="DT01">M/S The Subham</option>
    <option value="DS04">M/S Subholakshmi</option>
    <option value="DF02">M/S Foodoholoic</option>
    <option value="DS05">M/S Smriti Confectionery</option>
    <option value="DH01">M/S Honeybee Confectionery</option>
    <option value="DT03">M/S Tasteum</option>
    <option value="DU01">M/S Urmila Food Products</option>
    <option value="DM03">M/S Meenakshi Cafe</option>
    <option value="DB03">M/S B.P.S Confectionery</option>
    <option value="DS07">M/S Shree Confectionery</option>
    <option value="DS06">M/S S.B Enterprise</option>
    <option value="DT04">M/S Three Star Food Service</option>
    <option value="DF01">M/S Fatepur Food Plaza</option>
    <option value="DS11">M/S Star Confectionery</option>
    <option value="DF03">M/S Friends Confectionery</option>
    <option value="DK02">M/S Kripa Confectionery</option>
    <option value="DM05">M/S Maa Sindhu Snacks</option>
    <option value="DT06">M/S The Sunshine Confectionery</option>
    <option value="DM08">M/S Media World</option>
    <option value="DS10">M/S Shulabh Paniya</option>
    <option value="DA07">M/S Anjali Confectionery</option>
    <option value="DT05">M/S Tithi Confectionery</option>
    <option value="DC02">M/S Choudhury Confectionery</option>
    <option value="DR02">M/S Raj Quality</option>
    <option value="DS15">M/S SS Confectionery</option>
    <option value="DT07">M/S The Saltlake Sweets & Confectionery</option>
    <option value="DA08">M/S Aleena Cake Shop</option>
    <option value="DP06">M/S Puneji Overseas</option>
    <option value="DS16">M/S Sunshine Cakes & Cookies</option>
    <option value="DA09">M/S Anurag Confectionery</option>
    <option value="DN01">M/S Nayantara Confectionery</option>
    <option value="DB06">M/S Be Fresh In Recess</option>
    <option value="DK03">M/S Kamala Food Cafe</option>
    <option value="DP07">M/S Prity Foods</option>
    <option value="DJ02">M/S Jay Gopinath Enterprise</option>
    <option value="DN02">M/S Nihar Enterprise</option>
    <option value="DS17">M/S Sarkar Enterprise</option>
    <option value="DR03">M/S Rose Confectionery</option>
    <option value="DR04">M/S Raidighi Food Corner</option>
    <option value="DM09">M/S Maa Durga Shop</option>
    <option value="DC03">M/S Chander Haat</option>
    <option value="DM10">M/S MM Enterprise</option>
    <option value="DR05">M/S Rai Enterprise</option>
    <option value="DK04">M/S Kings Bandel</option>
    <option value="DD05">M/S Durjaya Confectionery</option>
    <option value="DM11">M/S MSG India</option>
    <option value="DA10">M/S Anurag Confectionery New Franchise</option>
    <option value="DK05">M/S Kanti Enterprise</option>
					    </select>
				  	</div>
				  	<button type="button" class="btn btn-primary" id="btnUseCouponCode">Use Coupon</button>
				</form>
	    	</div>
	    </div>
	</div>

	<!-- The Modal -->
	<div class="modal" id="edit-employee-modal">
	  	<div class="modal-dialog">
		    <div class="modal-content">

		      	<!-- Modal Header -->
		      	<div class="modal-header">
			        <h4 class="modal-title">Edit Employee</h4>
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      	</div>

		      	<!-- Modal body -->
		      	<div class="modal-body">
		        	<form action="update.php" id="edit-form">
		        		<input class="form-control" type="hidden" name="id">
				    	<div class="form-group">
						    <label for="email">Email</label>
						    <input class="form-control" type="text" name="email">
					  	</div>
					  	<div class="form-group">
						    <label for="first_name">First Name</label>
						    <input class="form-control" type="text" name="first_name">
					  	</div>
					  	<div class="form-group">
						    <label for="last_name">Last Name</label>
						    <input class="form-control" type="text" name="last_name">
					  	</div>
					  	<div class="form-group">
						    <label for="address">Address</label>
						    <textarea class="form-control" type="text" name="address" rows="3"></textarea>
					  	</div>
					  	<button type="button" class="btn btn-primary" id="btnUpdateSubmit">Update</button>
					  	<button type="button" class="btn btn-danger float-right" data-dismiss="modal">Close</button>
					</form>


		      	</div>

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