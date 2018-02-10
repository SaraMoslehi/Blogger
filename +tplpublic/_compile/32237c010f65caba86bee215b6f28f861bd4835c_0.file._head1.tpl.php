<?php /* Smarty version 3.1.27, created on 2018-02-10 08:02:00
         compiled from "+tplpublic\_head1.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:14544019625a7e98e8436b19_16722372%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '32237c010f65caba86bee215b6f28f861bd4835c' => 
    array (
      0 => '+tplpublic\\_head1.tpl',
      1 => 1518245264,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14544019625a7e98e8436b19_16722372',
  'variables' => 
  array (
    'title' => 0,
    'URL' => 0,
    'rantime' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a7e98e849d952_66495725',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a7e98e849d952_66495725')) {
function content_5a7e98e849d952_66495725 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '14544019625a7e98e8436b19_16722372';
?>
<meta charset="utf-8">
<title>BMS Blogger - <?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="expires" content="never" />
<meta name="document-type" content="public" />

<meta name="doc-class" content="Living Document" />
<meta name="classification" content="Consumer" />
<meta name="rating" content="general" />
<meta name="resource-type" content="document" />
<meta name="robots" content="INDEX,FOLLOW" />


<link rel="icon" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/skin/1/favicon.png" type="image/x-icon" />
<link rel="SHORTCUT ICON" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/skin/1/favicon.png" type="image/x-icon" />

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/bootstrap/3.3.7/css/bootstrap-rtl.min.css">
<link href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/+style/styles1.min.css?t=<?php echo $_smarty_tpl->tpl_vars['rantime']->value;?>
" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/js/bxslider/jquery.bxslider.min.css" />
<link href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/scripts/imageviewer/thumbnailviewer.css" type="text/css" rel="stylesheet" />
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/scripts/imageviewer/thumbnailviewer.min.js"><?php echo '</script'; ?>
>

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
/js/bxslider/jquery.bxslider.min.js"><?php echo '</script'; ?>
>
<?php }
}
?>