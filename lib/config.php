<?php
defined('_VALID_ACCESS') or die('Restricted Access');
require_once('function.php' );
require_once('db.config.php');
require_once('farsidate.php');
//smarty config
require_once('smarty/Smarty.class.php');


$smarty = new smarty();
if($section == 'adm'){
	$smarty->template_dir = "+tpladmin";
	$smarty->compile_dir  = "+tpladmin/_compile";
	$smarty->cache_dir = "+tpladmin/_cache";

}else{
	$smarty->template_dir = "+tplpublic";
	$smarty->compile_dir  = "+tplpublic/_compile";
	$smarty->cache_dir = "+tplpublic/_cache";
	//var_dump($smarty);
}
$smarty->assign("URL", URL);
$messages = array(
	1=>'Record deleted successfully',
	2=>'Error occurred. Please try again', 
	3=>'Record saved successfully',
	4=>'Record updated successfully', 
	5=>'All fields are required',
	6=>'ورود موفق!',
	7=>'نام کاربری یا گذرواژه نادرست است.',
	8=>'خروج موفق!',
	9=>'کاراکتر غیر مجاز!',
	10=>'درج نام کاربری و گذرواژه اجباری است!',
	11=>'نام کاربری تکراری است. دوباره تلاش کنید.' );

?>