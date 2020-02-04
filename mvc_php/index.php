
<?php 
include "model/dbconfig.php";
$db= new database();
$db->connect();

if (isset($_GET['controller'])) {
	$controller=$_GET['controller'];
}
else{
	$controller='';
}
switch ($controller) {
	case 'thanh-vien':
		require_once "controller/back-end/index.php";
		break;
	case 'giao-dien':
		require_once "controller/font-end/index.php";
		break;
	default:
	require_once "controller/font-end/index.php";
		break;
		
}

 ?>