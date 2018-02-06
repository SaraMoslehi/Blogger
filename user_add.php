<?php
define('_VALID_ACCESS', 1);
require_once('lib/config.php');
$user_name = '';
$user_family = '';
$username = '';
$password = '';
$mobile = '';
$email = '';
$flag = 0;
if(isset($_POST['btn']))
{
	$user_name  = $_POST['user_name'];
	$user_family  = $_POST['user_family'];
	$username  = $_POST['username'];
	$password  = $_POST['password'];
	$mobile  = $_POST['mobile'];
	$email  = $_POST['email'];
	if(!$user_name || !$user_family || !$username|| !$password|| !$mobile|| !$email)
	{
		$flag = 5;
	}
	else
	{
		$insRec = new MongoDB\Driver\BulkWrite;
		$insRec->insert(['user_name' =>$user_name, 'user_family'=>$user_family, 'username'=>$username, 'password'=>$password, 'mobile'=>$mobile, 'email'=>$email]);
		$writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 1000);
		 $result = $manager->executeBulkWrite('BloggerDB.users', $insRec, $writeConcern);
		if($result->getInsertedCount())
		{
			$flag = 3;
		}
		else
		{
			$flag = 2;
		}
	}
}
header("Location: index.php?flag=$flag");
exit;
?>