<?php
defined( '_VALID_ACCESS' ) or die( 'Restricted Access' );
$title[$section][$module] = 'ایجاد حساب کاربری';
if(isset($_POST['fs']))
{
	if(($_POST['username']!="") && ($_POST['password']!=""))
	{
		$name   = $_POST['user_name'];
		$family   = $_POST['user_family'];
		$username   = $_POST['username'];
		$password   = $_POST['password'];
		$mobile   = $_POST['mobile'];
		$email   = $_POST['email'];
		//چک کردن یوزرنیم تکراری
		$filter = ["username" => $username];
		$options = [
			'projection' => ['username' => 1]
		];
		$query = new MongoDB\Driver\Query($filter, $options);
		$user = $manager->executeQuery('BloggerDB.users', $query);
		foreach($user as $r){
		   $r=$user;
		}
		if($r)
			$flag=11;
		else
		{
			$insRec  = new MongoDB\Driver\BulkWrite;
			$insRec->insert(['user_name' =>$name, 'user_family'=>$family, 'username'=>$username, 'password'=>$password, 'mobile'=>$mobile, 'email'=>$email]);
			$writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 1000);
			$result = $manager->executeBulkWrite('BloggerDB.users', $insRec, $writeConcern);
			if($result->getInsertedCount()){
				$flag = 3;
			}else{
				$flag = 2;
			}
		}
	}
	
	else
	{
		$flag = 10;
	}
	redirect(URL."/signup//&flag=$flag/");
}
$tplModule = 'signup.tpl';
?>
