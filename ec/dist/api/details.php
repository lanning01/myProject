<?php
	include 'connectdb.php';

	$sql = "SELECT * FROM `products`";
	$ret = $conn->query($sql);
	$allData = array();



	header('content-type: text/json');
	if($ret->num_rows > 0) {
		while($oneData = $ret->fetch_assoc()) {
			$allData[0] = $oneData;
		}

		echo json_encode($allData);
	}

	$conn->close();
?>