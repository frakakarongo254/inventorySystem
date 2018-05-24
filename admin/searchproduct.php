<?php
include('config.php');
   $name = $_POST['name'];
   
 //$id = "1";
$result_array = array();

		$customerresult=mysqli_query($conn,"select * from `product` where `product_name` LIKE '%{$name}%' ");

	
				while($row = $customerresult->fetch_array()) {
				 
				// echo $array = $row['product_name']."<br>";
				 echo "<a href='#' style='text-decoration:none;'><div id='link' onClick='addText(\"".$row['product_name']."\");' style='display:block;color:black;font-style:bold;background-color:white'><b>" . $row['product_name'] . "</br></div><a>";
				}
				//echo $array;
				//echo $data;
				


?>