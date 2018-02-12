<?php
$path1 = 'php/';
$path2 = '../php/';
set_include_path(get_include_path() . PATH_SEPARATOR . $path1. PATH_SEPARATOR . $path2);
if(($_SERVER['REMOTE_ADDR'] == '127.0.0.1')||($_SERVER['REMOTE_ADDR'] == '::1')){
	$user 	= 'BMS';
	$pass 	= 'BMS123';
	$host 	= 'localhost';
	$port	= '27017';
	$dbname = 'BloggerDB';
	define("URL","http://localhost/blogger");
}
else{
	$user 	= 'BMS';
	$pass 	= 'BMS123';
	$host 	= 'localhost';
	$port	= '27017';
	$dbname	= 'BloggerDB';
	define("URL","http://46.100.53.102:28000/blogger");
}
//$manager = new MongoDB\Driver\Manager("mongodb://$user:$pass@$host:$port/$dbname");
$manager = new MongoDB\Driver\Manager("mongodb://$host:$port/$dbname");
//var_dump($manager);
?>