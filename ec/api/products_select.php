<?php
	include 'connectdb.php';

	$sql = "SELECT * FROM `products` where `title` like `%oppo%` AND `name` like `%oppo%`";
	$ret = $conn->query($sql);
	$allData = array();



	header('content-type: text/json');
	if($ret->num_rows > 0) {
		while($oneData = $ret->fetch_assoc()) {
			$allData[] = $oneData;
		}

		echo json_encode($allData);
	}

	$conn->close();

?>