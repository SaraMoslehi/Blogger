<?php /* Smarty version 3.1.27, created on 2018-02-10 08:02:32
         compiled from "+tpladmin\_head.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:16253535145a7e99081b0e80_05210105%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e21b8b15db617405a13d3e06263b69eb4e05cf29' => 
    array (
      0 => '+tpladmin\\_head.tpl',
      1 => 1518245264,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16253535145a7e99081b0e80_05210105',
  'variables' => 
  array (
    'URL' => 0,
    'title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a7e9908239056_18190516',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a7e9908239056_18190516')) {
function content_5a7e9908239056_18190516 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '16253535145a7e99081b0e80_05210105';
?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/admin/cms.png" />
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/bootstrap/3.3.7/css/bootstrap-rtl.min.css">
<link href="+style/admin.css?v=1" type="text/css" rel="stylesheet" media="all"  />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/jquery/3.1.1/jquery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/bootstrap/3.3.7/js/bootstrap.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/scripts/ckeditor/ckeditor.js"><?php echo '</script'; ?>
>
<link href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/scripts/imageviewer/thumbnailviewer.css" type="text/css" rel="stylesheet" />
<?php echo '<script'; ?>
 type="text/javascript" language="javascript" src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/scripts/imageviewer/thumbnailviewer.min.js"><?php echo '</script'; ?>
>
<title>BMS Blogger | <?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title><?php }
}
?>