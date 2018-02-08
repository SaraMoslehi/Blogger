<?php 
if (substr_count($_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip')) ob_start("ob_gzhandler"); else ob_start();
header('Content-type: text/html; charset=UTF-8');
define('_VALID_ACCESS', 1);
session_start();
//debuging on or off
$deBUG = 1;
if($deBUG){
	//set_error_handler("var_dump");
	//error_reporting(E_ALL^ E_NOTICE);
	ini_set('display_errors', '1');
}else{
	error_reporting(0);
	ini_set('display_errors', '0');
}
//including config and db config



if (!isset($admin)) $admin = null;
$loginerror = isset($_GET['loginerror']) ? $_GET['loginerror'] :  null;
$starttime =microtime(true);
$action  = @$_REQUEST['action'];
$formid    = @$_GET['formid'];
$id       = intval(@$_GET['id']) ? @$_GET['id'] : 0;
$id 	  = str_replace("union","",$id);
if ($id < 0) {$id=0;}
$option  = @$_GET['option'];
$parts 	 = explode('_', $option, 2);
$section = count($parts) > 1 ? current($parts) : 'pbl';
$module  = end($parts);
$href    = $_SERVER['PHP_SELF'] . ($_SERVER['QUERY_STRING'] ? '?'.$_SERVER['QUERY_STRING'] : '');
require_once("lib/config.php");
//echo extension_loaded("mongodb") ? "loaded\n" : "not loaded\n";//check if mongodb ext is loaded
//echo "hello world";
$todayFA = jdate("D d M Y");
$todayEN = date("D d M Y");
$flag    = isset($_GET['flag'])?intval($_GET['flag']):0;
$message ='';
if($flag){
	$message = $messages[$flag];
}
$filter = [];
$options = [
	'sort' => ['_id' => -1],
];
$query = new MongoDB\Driver\Query($filter, $options);
$cursor = $manager->executeQuery('BloggerDB.products', $query);

switch($section){
	case 'adm':
		$tplMain   = "_index-admin.tpl";
		$dir 	   = 'admin';
		break;
	default:
		minify_css();
		$tplMain = "index.tpl";
		$dir     = 'public';
		$module  = $module ? $module : 'home';
}


if(@$_SESSION['admin']){
	$smarty->assign('admin', $_SESSION['admin']);
	$permissions = $db->getRow("SELECT * FROM xxadmin NATURAL LEFT JOIN xxpermissions WHERE xusername = '$_SESSION[admin]'");
	$permission=$permissions["xpermission"];
	//********* getting adminid  ***********
	$admin   = $_SESSION['admin'];
	$sql     = "SELECT * FROM xxadmin WHERE xusername = '$admin'";
	$admin   = $db->getRow($sql);
	$adminid = $admin['xadminid'];
	$esm = $admin['xadminname'];
	$famil = $admin['xadminfamily'];
	$sex = $admin['xsex'];
	if ($sex=='مرد') $esmfamil="آقای ".$esm." ".$famil;
	else $esmfamil="خانم ".$esm." ".$famil;
	$smarty->assign('esmfamil', @$esmfamil);
	//************************************** 
	$sql="SELECT * FROM xxerja 
		  LEFT JOIN xxmodule ON xxmodule.xmoduleid=xxerja.xerjamoduleid
		  LEFT JOIN xxadmin ON xxadmin.xadminid=xxerja.xerjaadminid
		  WHERE xxmodule.xmoduleheading='$module' AND xxerja.xerjareceiverid='$adminid' AND xxerja.xerjaformid='$id'";
	$erja=$db->getRow($sql);
	if((strpos($permission, $module) === false && $section == 'adm')&& !$erja ){ redirect("index.php?option=adm_permission");}
	$smarty->assign('permission', @$permission);
}

if(file_exists("$dir/$module.php")) {
	if($section=='adm' && @$_SESSION['admin']){
		require_once("$dir/$module.php");
	}else{
		if($section == 'adm' ){
			require_once("$dir/login.php");
		}
		else require_once("$dir/$module.php");
	}
}
else
{
	require_once("$dir/404.php");
}
/*

if($section=='adm')
{
	$menufreeze = $db->getOne("SELECT xmenufreeze FROM xx_setting");
	$admi = @$_SESSION['admin'];
	$sql = "SELECT * FROM xxadmin
			WHERE xusername='$admi'";
	$per = $db->getRow($sql);
	$permi=$per['xpermissionid'];
	$sql = "SELECT * FROM xxpermissions 
			WHERE xpermissionid='$permi'";		
	$men = $db->getRow($sql);
	$Menu=$men['xpermenu'];
	$aid = $per['xadminid'];
	$aacdpid = $per['xacdeepid'];
	$admindepartment = $per['xdepartmentid'];
	$sql = "SELECT * FROM xxdepartment 
			WHERE xdepartmentid='$admindepartment'";		
	$depa = $db->getRow($sql);
	$admindepartmentname = $depa['xdepartment'];
	$admindepartmentmsg = $depa['xdepmsg'];
	$admindepartmentcolor = $depa['xdepartmentcolor'];
		
	if(file_exists("images/admins/".$aid))
	{
		$apic = 1;	
	}
	$sql = "SELECT COUNT(*) FROM xxmessage 
			WHERE xmessagereceiverid='$aid' AND xmessagereceivetime=0 AND xmessagerdeleted='no'";		
	$messagerec = $db->getOne($sql);
	//*********************************
	$smarty->assign('messagerec', $messagerec);
	//****************************************
	$sql = "SELECT * FROM xxdepartment 
			WHERE xdepactive='yes' AND xdeleted='no'";		
	$admdeps = $db->getAll($sql);
	//*********************************
	$smarty->assign('admdeps', $admdeps);
	$smarty->assign('aid', $aid);
}

$smarty->assign('list', @$list);
$smarty->assign('listPrimary', @$listPrimary);
$smarty->assign('listTable', @$listTable);
$smarty->assign('fieldList', @$fieldList);
$smarty->assign('adminPage', @$adminPage);
$smarty->assign('newPage', @$newPage);
$smarty->assign('default', @$default);
$smarty->assign('sitename', $firstpage['xsitename']);
$smarty->assign('recPerPage', $recPerPage);
$smarty->assign('offset', $offset);
$smarty->assign('numrows', @$numrows);
$smarty->assign('page', @$page);
$smarty->assign('num', (@$page-1)*( @$_COOKIE['recPerPage']["$option"] ? @$_COOKIE['recPerPage']["$option"] : @$config[$section]['recPerPage'] ));
$smarty->assign('repurl', @$repurl);
$smarty->assign('frwurl', @$frwurl);
$smarty->assign('firstimage', @$firstimage);
*/
$smarty->assign('flag', $flag);
$smarty->assign('todayFA', $todayFA);
$smarty->assign('todayEN', $todayEN);
$smarty->assign('backurl', @$backurl);
$smarty->assign('id', @$id);
$smarty->assign('formid', @$formid);
$smarty->assign('section', $section);
$smarty->assign('module', $module);

$smarty->assign('href', @$href);
$smarty->assign('title', @$title[$section][$module]);
$smarty->assign('loginerror', $loginerror);
$smarty->assign('flag', $flag);

$endtime =microtime(true);
$processtime=round(($endtime-$starttime),4);
$smarty->assign('rantime', time());
$smarty->assign('processtime', $processtime);


$smarty->assign('tplModule', @$tplModule);

$smarty->display($tplMain);
?>
