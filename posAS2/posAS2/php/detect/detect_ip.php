<?PHP
/////////////////////////////////////////////////////
error_reporting (E_ALL ^ E_NOTICE);
/////////////////////////////////////////////////////
include '../includes/LAN_access.php';
/////////////////////////////////////////////////////
$link = mysql_connect($machine, $uName, $pCode);
mysql_select_db("LAN_access", $link);
/////////////////////////////////////////////////////
$active = "y";
$clientType = "customer";
$storeID = "l";
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
$ipaddress = $_SERVER["REMOTE_ADDR"];
echo $ipaddress;
/////////////////////////////////////////////////////
////////////////////////////////////////////////////
$result = mysql_query("SELECT * FROM localTerminals WHERE ip_address  = '$ipaddress' AND active = '$active' AND store_ID = '$storeID'  ")or die( "An error has ocured: " .mysql_error (). ":" .mysql_errno ());
/////////////////////////////////////////////////////
$num_rows = mysql_num_rows($result);
	if($num_rows == 0)
		{
		$clientType = "customer";
		}
	else
		{
		$clientType = "local";
		}
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////	
print "&clientType=" . urlencode(utf8_encode(serialize($clientType)));
//print "&clientType=" . urlencode(utf8_encode($clientType ));
mysql_close($link);
?>
?>