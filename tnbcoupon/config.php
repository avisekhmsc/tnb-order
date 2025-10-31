<?php
	//set the servername
	define("SERVER_NAME", "localhost");
	//set the server username
	define("SERVER_UNAME", "hisab165_couponuser");
	// set the server password (you must put password here if your using live server)
	define("SERVER_UPASS", "Msc@2023");
	// set the database name
	define("SERVER_DB", "hisab165_coupon_db");

	// Include functions file
	require_once 'functions.php';

	// Set a variable $db and store db connection
	$db = connectDB();
?>