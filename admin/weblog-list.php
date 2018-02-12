<?php
defined('_VALID_ACCESS') or die('Restricted Access');

$title[$section][$module] = 'لیست وبلاگ‌ها';
$admin=$_SESSION['admin'];
$filter = ["username" => $admin];
$options = [
	'projection' => ['weblogs' => 1,'_id'=>1]
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
    $list[$key]['weblogname'] = $row->weblogname;
	$list[$key]['webregtime'] = jdate("D d-m-Y ساعت H:i", 0, 0, ($row->weblogregtime)+2.5*60*60);
	$list[$key]['weblogregtime'] =$row->weblogregtime;
  }

  
 //print_r($list); 
/*foreach($weblogs as $list){
}
print_r($list);
foreach($list['weblogs'] as $key=>$val){
}
*/
$fieldList['weblogname']['title']  = 'عنوان وبلاگ';
$fieldList['webregtime']['title']  = 'زمان ثبت یا آخرین ویرایش';
// print_r($fieldList); 
$listPrimary = 'weblogregtime';
$adminPage = 'adm_weblog-admin';

$tplModule = 'list.tpl';
?>
