<?php
defined('_VALID_ACCESS') or die('Restricted Access');

$title[$section][$module] = 'لیست مطالب';
//*****استخراج کلید وبلاگ‌های کاربر
$admin=$_SESSION['admin'];
$filter = ["username" => $admin];
$options = [
	'projection' => ['weblogs' => 1]
];
$query = new MongoDB\Driver\Query($filter, $options);
$weblogs = $manager->executeQuery('BloggerDB.users', $query);
foreach($weblogs as $listobj){
}
$listn = (array) $listobj ;
$list=array();
foreach($listn['weblogs'] as $key=>$row){
	$wrt=$row->weblogregtime;
	$filter = ['weblogregtime'=>$wrt];
	$options = [
		'projection' => ['_id'=>0]
	];
	$query = new MongoDB\Driver\Query($filter, $options);
	$posts = $manager->executeQuery('BloggerDB.posts', $query);
	foreach($posts as $postsobj){
		array_push($list,['title'=>$postsobj->title,'weblogregtime'=>$postsobj->weblogregtime,'postregtime'=>$postsobj->postregtime]);
	}
	//$postn = (array) $postsobj ;
	//print_r($uposts);

}
//print_r($list);
//print_r($uweblogs);
//استخراج پست‌ها بر اساس کلید های وبلاگ‌ها 
//$filter = [
//	'$exists' => ['weblogregtime'=>$uweblogs]];
//$options = [
//	'projection' => ['titel' => 1,]
//];
//$query = new MongoDB\Driver\Query($filter, $options);
//$posts = $manager->executeQuery('BloggerDB.posts', $query);
//print_r($posts);

//foreach($posts as $postsobj){
//	echo "hi";
//}
//$postn = (array) $postsobj ;
//print_r($postn);


/***********************************************************
foreach($list as $key=>$val){
	if ($list[$key]['xsubdomain'] ==''){$subd = '';}
	else {$subd = $list[$key]['xsubdomain'].".";}
	$list[$key]['xnews'] = "<a  target='_new' title='عنوان' href='index.php?option=adm_news-admin&action=edit&id=".$val['xnewsid']."'>" . $val['xnews'] . "</a>";
	$list[$key]['address'] = "<a target='_blank' dir='ltr' href='http://www.".$subd."daneshpazir.net/news-detail/$val[xnewsid]/'><img src='".URL."/images/admin/link.png' height='25px'/></a>";
	$list[$key]['xdate'] = jdate("Y/m/d", 0, 0, strtotime($val['xdate']));
	$list[$key]['admin']=$list[$key]['xadminname']." ".$list[$key]['xadminfamily'];
	if ($list[$key]['xnewsfadminid']!=0)
	{
		$sql = "SELECT * FROM xxadmin
				WHERE xadminid=".$val['xnewsfadminid'];
		$fadmin = $db->getRow($sql);
		$list[$key]['fadmin']=$fadmin['xadminname']." ".$fadmin['xadminfamily'];
	}
	else
	{
		$list[$key]['fadmin']="نامشخص";
	}
	if ($list[$key]['xnewskeyword']=='') {$list[$key]['xnewskeyword']='<span style="background-color:black; color:yellow">ندارد</span>';}
	else {$list[$key]['xnewskeyword']='دارد';};
	if ($list[$key]['xpublish']=='yes') {$list[$key]['publish']='بله';}
	else {$list[$key]['publish']='<span style="background-color:black; color:yellow">مخفی</span>';};
	if ($list[$key]['xnewsregtime']==0) {$list[$key]['newsregtime']='نامعلوم';}
	else {$list[$key]['newsregtime'] = jdate("D d M Y ساعت H:i", 0, 0, $list[$key]['xnewsregtime']+$timedef*60*60);}
}*/
$fieldList['title']['title']  = 'عنوان پست';
$fieldList['weblogregtime']['title']  = 'مربوط به وبلاگ';
$fieldList['postregtime']['title']  = 'زمان ثبت یا آخرین ویرایش';

$listPrimary		= 'postregtime';
$adminPage		  = 'adm_post-admin';
//$listTable		  = 'xxnews';
$backurl 			= "index.php?option=adm_post-list";

$tplModule = 'list.tpl';
?>