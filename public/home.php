<?php
defined('_VALID_ACCESS') or die('Restricted Access');
$title[$section][$module] = "خانه";
//**********************************************
$filter = [];
$options = [
	'projection' => ['user_name'=>1,'user_family'=>1,'weblogs'=>1]
];
$query = new MongoDB\Driver\Query($filter, $options);
$cursor = $manager->executeQuery('BloggerDB.users', $query);
$filteredData = iterator_to_array($cursor);
//print_r($filteredData);

foreach($filteredData as $document){
	//$filteredweblog = iterator_to_array($document->weblogs);
	//$listn = (array) $document[$key1]['weblogs'];
	//print_r($document[$key1]['weblogs']);
	foreach($document->weblogs as $key=>$weblog)
	{
		//var_dump($document[$key1]->weblogs);

		$list[$key]['nevisande'] ="نویسنده: ".$document->user_name." ".$document->user_family;
		$list[$key]['onvan'] = "عنوان وبلاگ:    ".$weblog->weblogname."    -     " ;

//		echo $document->user_name." ".$document->user_name.":".$weblog->weblogname."<br />";
	}
}
$fieldList['nevisande']['title']  = 'نویسنده';
$fieldList['onvan']['title']  = 'عنوان وبلاگ';

//print_r($list);
$tplModule = 'home.tpl';
?>