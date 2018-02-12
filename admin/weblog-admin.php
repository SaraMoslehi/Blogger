<?php
defined('_VALID_ACCESS') or die('Restricted Access');

$title[$section][$module] = $id ? 'ویرایش وبلاگ' : 'وبلاگ جدید';
$collection = 'weblogs';
$field = 'weblogid';
$backurl = "index.php?option=adm_weblog-list";

//*******************geting admin detail *********************
$admin=$_SESSION['admin'];
//**********************************************
if($action == 'add' || $action == 'update'){
	$weblogname		= zzz($_POST['weblogname']);
	$weblogregtime	 = time();
}
switch($action){
	case 'edit':
		$filter = array('weblogs.weblogregtime' => $id );
		$options = [
			'projection' => ['weblogs.weblogname' => 1,'weblogs.weblogregtime' => 1 ,'_id'=>0]
		];
		$query = new MongoDB\Driver\Query($filter,$options);     
		$cursor = $manager->executeQuery("BloggerDB.users", $query);
		$filteredData = iterator_to_array($cursor);
		//print_r($filteredData);
		$weblogs=(reset($filteredData)->weblogs);
		foreach ($weblogs as $key=>$val)
		{
			if($val->weblogregtime==$id) 
			{
				$default['weblogname']= $val->weblogname;
			}
		};
		break;
	case 'del':
		$sql = "UPDATE $table SET xnewsgroupdeleted='yes' WHERE $field = '$id'";
		$db->query($sql);
		redirect($backurl);
		break;
	case 'add':
		$insRec  = new MongoDB\Driver\BulkWrite;
		$query =["username" => $admin];
		// $update = ['$push'=> ['cars.$.data'=>['car' => $car, 'color' => $color]]];
		$update = ['$push'=> ['weblogs'=>['weblogname' => $weblogname, 'weblogregtime' => strval($weblogregtime)]]];
		//$update = ['$set' => ['weblogname' => $weblogname, 'weblogregtime' => $weblogregtime]]; 
		$insRec->update($query, $update, ["upsert" => true]);
		//$writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 1000);
  		//$manager->executeBulkWrite('dbName.carsCol', $bulkWriteManager); // Going to DB and Collection 

		$result = $manager->executeBulkWrite('BloggerDB.users', $insRec);

		redirect($backurl);
		break;
	case 'update':
		$sql = "UPDATE $table SET xnewsgroup='$newsgroup', xnewsgroupdepid='$newsgroupdepid', xnewsgroupadminid='$newsgroupadminid', xnewsgroupregtime='$newsgroupregtime' WHERE $field='$id'";
		$db->query($sql);
		redirect($backurl);
		break;
}
//**************************************************************
$tplModule = 'weblog-admin.tpl';
?>