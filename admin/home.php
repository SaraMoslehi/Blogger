<?php
defined('_VALID_ACCESS') or die('Restricted Access');
//***********************************************************************************************مشخصات اولیه ادمین
$title[$section][$module] = 'داشبورد';
$admi = @$_SESSION['admin'];
$filter = ['username' => $admi];
$options = [
	'projection' => ['username' => 1 , 'password' => 1]
];
$query = new MongoDB\Driver\Query($filter, $options);
$user = $manager->executeQuery('BloggerDB.users', $query);
foreach($user as $homeadmin){
}
//******************************************************************بررسی قدرت پسورد
$strength=0;
$Passw=$homeadmin->password;
if(strlen($Passw)>6)
	$strength++;
if (preg_match('/[A-Z]/', $Passw))
{
	if(preg_match('/[a-z]/', $Passw))
	$strength++;
}
if (preg_match('/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]|[A-Za-z].*[0-9].*[A-Za-z]/', $Passw))
	$strength++;
if (preg_match('/[!%&@#$^*?_~]+/', $Passw))
	$strength++;
if(strlen($Passw)>12)	
	$strength++;
if(strlen($Passw) <7)
	$PassLenght="کوتاه";
elseif($strength<2)
	$PassLenght="صعیف";
elseif($strength==2)
	$PassLenght="خوب";
elseif($strength==3 || $strength==4)
	$PassLenght="قوی";
else
	$PassLenght="خیلی قوی";
$smarty->assign('PassLenght', $PassLenght);

$tplModule = '_home.tpl';
?>