<?php
	// include config file
	require_once 'config.php';

	//a PHP Super Global variable which used to collect data after submitting it from the form
	// Sanitize fist the values of this variable
	$request = sanitize($_REQUEST);

	// Validate the data
	$validation = validate($request, [
		'username' => 'required',
		'password' => 'required'
	]);

	// Defined $result as array
	$result = [];

	// Check if no validation errors
	if(!count($validation)){

		// Connect to database
		$db = connectDB();

		// Set the INSERT SQL data
		$sql = "SELECT * FROM user WHERE username='".$request['username']."' AND pswd='".$request['password']."'";

		// Process the query
		$results = $db->query($sql);

		// Fetch Associative array
		$row = $results->fetch_assoc();
		print_r($row);
		

		// Check if coupon code still active
		if($row['type']==1){
			
		 session_start();
		 $type = $row['type'];
		 $_SESSION['type'] = $type;
		 print($_SESSION['type']);
		 header("location:coupon.php");
		}
		elseif ($row['type']==3) {
			session_start();
		 $type = $row['type'];
		 $_SESSION['type'] = $type;
		 print($_SESSION['type']);
		 header("location:backend_coupon.php");

		}
		else{
			header("location:index.php?msg=login error!");
		}
	}
		?>