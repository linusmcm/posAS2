<?php
/////////////////////////////////////////////////////
//include '../includes/vitals.php';
/////////////////////////////////////////////////////
//error reporting
error_reporting (E_ALL ^ E_NOTICE);
/////////////////////////////////////////////////////
//variable declaration
$uName = "root";
$pCode = "blockAll2a5";
$machine = "localhost";
/////////////////////////////////////////////////////
$active = "Y";
$pos = 
$index = 0;
$order_name = Array();
$order_ID  = Array();
$order_type = Array();
$ep_code = "";
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
$posType = $_POST['posType'];
/////////////////////////////////////////////////////
//datbase connection
/////////////////////////////////////////////////////
$link = mysql_connect($machine, $uName, $pCode);
mysql_select_db("interface", $link);
/////////////////////////////////////////////////////
//datbase query
$result = mysql_query("SELECT * FROM orderSections WHERE active = '$active' AND order_interface = '$posType' ");
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////	
while($row = mysql_fetch_array($result))
	{
			$order_name[$index] = $row['order_name'];
			$order_ID [$index] = $row['order_ID'];
			$order_type[$index] = $row['order_type']; 
			$index++;
	}
/////////////////////////////////////////////////////
//pass records to array
/////////////////////////////////////////////////////	
print "order_name=" . urlencode(utf8_encode(serialize($order_name)));
print "&order_ID=" . urlencode(utf8_encode(serialize($order_ID)));
print "&order_type=" . urlencode(utf8_encode(serialize($order_type)));
mysql_close($link)
?>
