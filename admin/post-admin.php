<?php
defined('_VALID_ACCESS') or die('Restricted Access');

$title[$section][$module] = $id ? 'ویرایش مطلب' : 'مطلب جدید';
$table = 'xxnews';
$field = 'xnewsid';
//****************************************************************
$backurl = "index.php?option=adm_post-list";

//*******************geting admin detail *********************
$admin=$_SESSION['admin'];
//************************************************************
if($action == 'add' || $action == 'update'){
	$title			= zzzs($_POST['title']);
	$weblogcontext		 = zzzs($_POST['weblogcontext']);
	$weblogregtime	 = $_POST['weblogregtime'];
	$postregtime   		 = time();
}
//*************************************************
switch($action){
	case 'edit':
		
	break;
	case 'del':
		$sql = "SELECT COUNT(*) FROM $table 
				LEFT JOIN xxdepartment USING (xdepartmentid)
				WHERE $field = '$id' $omgh";
		$oke = $db->getOne($sql);
		if ($oke!=1)
			{
				$tplModule = 'permission.tpl';break;
			}
		$sql = "UPDATE $table SET xdeleted='yes' WHERE $field = '$id'";
		$db->query($sql);
		@unlink($sdomain."images/news/$id.jpg");
		@unlink($sdomain."images/news/thumb_$id.jpg");
		redirect("index.php?option=adm_news-list");
		break;
	case 'add':
		$insRec  = new MongoDB\Driver\BulkWrite;
		$insRec->insert(['title' =>$title, 'weblogcontext'=>$weblogcontext, 'weblogregtime'=>$weblogregtime, 'postregtime'=>$postregtime]);
		$writeConcern = new MongoDB\Driver\WriteConcern(MongoDB\Driver\WriteConcern::MAJORITY, 1000);
		$result = $manager->executeBulkWrite('BloggerDB.posts', $insRec, $writeConcern);

		redirect($backurl);

		break;
	case 'update':
		$sql = "UPDATE $table SET xnews='$news', xcontext='$context', xnewsgroupid='$newsgroupid', xdate='$date', 
				xarchive='$archive', xpublish='$publish', xadminid='$adminid', xnewskeyword='$keyword', xdepartmentid='$departmentid', xnewsregtime='$regtime'
				WHERE $field='$id'";
		$db->query($sql);
		//****************************درج منبع خبر
		if($newslinksextid)
		{
			$sql = "INSERT INTO xxnewslinks(xnewslinkstitr, xnewslinksextid, xnewslinksresid, xnewslinksnewsid, xnewslinksregtime, xnewslinksadminid) 
					VALUES('$news', '$newslinksextid', '$newslinksresid', '$id', '$regtime', '$adminid')";
			$db->query($sql);
		}
		break;
	case 'delimg':
		@unlink($sdomain."images/news/$id.jpg");
		@unlink($sdomain."images/news/thumb_$id.jpg");
		redirect("index.php?option=adm_news-list");
}

if($action == 'add' || $action == 'update'){
	if($pic['tmp_name']){
		require_once("lib/thumbnail_generator.php");
		move_uploaded_file($pic['tmp_name'],$sdomain. "images/news/$id.jpg"); 
		createthumb($sdomain."images/news/$id.jpg", $sdomain."images/news/newsthumb_$id.jpg", 50, 50);
		createthumb($sdomain."images/news/$id.jpg", $sdomain."images/news/thumb_$id.jpg", 150, 150);
	}
	CreateRss();
	CreateSitemap($departmentid);
	redirect("index.php?option=adm_news-admin&action=edit&id=$id");
}

$today = jdate('Y-m-d');
$smarty->assign('today', $today);
//خواندن لیست وبلاگ
$filter = ["username" => $admin];
$options = [
	'projection' => ['weblogs' => 1]
];
$query = new MongoDB\Driver\Query($filter, $options);
$weblogs = $manager->executeQuery('BloggerDB.users', $query);
foreach($weblogs as $listobj){
}
$listn = (array) $listobj ;
//print_r($listn);
//$array = json_decode(json_encode($list), true);
//print_r($listn['weblogs']);
  foreach($listn['weblogs'] as $key=>$row){
    $wllist[$key]['weblogname'] = $row->weblogname;
	$wllist[$key]['webregtime'] = jdate("D d-m-Y ساعت H:i", 0, 0, ($row->weblogregtime)+2.5*60*60);
	$wllist[$key]['weblogregtime'] =$row->weblogregtime;
}
$smarty->assign('weblogs', $wllist);
if (!isset($tplModule)) {$tplModule = 'post-admin.tpl';}
?>