<?php /* Smarty version 3.1.27, created on 2018-02-11 19:37:04
         compiled from "+tpladmin\_index-admin.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:8337521005a808d50563bf5_76671084%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f81a9f708df3a29bce4e65836e22f57c631fe604' => 
    array (
      0 => '+tpladmin\\_index-admin.tpl',
      1 => 1518371417,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8337521005a808d50563bf5_76671084',
  'variables' => 
  array (
    'tplModule' => 0,
    'URL' => 0,
    'esmfamil' => 0,
    'title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a808d505c0eb5_91830131',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a808d505c0eb5_91830131')) {
function content_5a808d505c0eb5_91830131 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '8337521005a808d50563bf5_76671084';
?>
<!doctype html>
<html>
<head>
    <?php echo $_smarty_tpl->getSubTemplate ("_head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

</head>
<body class="main">
<?php if ($_smarty_tpl->tpl_vars['tplModule']->value != '_login.tpl') {?>
<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
">
        <span>
            <img src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/admin/Blogger.jpg" alt="LOGO" width="100px" />
            سامانه مدیریت BMS Blogger
        </span>
        </a>
    </div>
    <!-- Top Menu Items -->
    <ul class="nav navbar-left top-nav">
<!--            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
            </a>
        </li>            
-->            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $_smarty_tpl->tpl_vars['esmfamil']->value;?>
 <b class="fa fa-angle-down"></b></a>
            <ul class="dropdown-menu">
                <li><a href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/index.php?option=adm_adminpersonaledit"><i class="fa fa-fw fa-user"></i> ویرایش</a></li>
                <li><a href="#"><i class="fa fa-fw fa-cog"></i> تغییر پسورد</a></li>
                <li class="divider"></li>
                <li><a href="index.php?option=adm_login&logout=1"><i class="fa fa-fw fa-power-off"></i> خروج</a></li>
            </ul>
        </li>
    </ul>
    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="index.php?option=adm_home"><i class="fa fa-fw fa-home fa-lg"></i>  خانه</a>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-folder-open"></i> وبلاگ‌ها <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-1" class="collapse">
                    <li><a href="index.php?option=adm_weblog-list">لیست وبلاگ‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_weblog-admin">وبلاگ جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-book"></i>  مطالب <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-2" class="collapse">
                    <li><a href="index.php?option=adm_post-list">لیست پست‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_post-admin">پست جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>

<div id="wrapper">
    <!-- Navigation -->

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
	                <h1 style="text-align:center"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h1>
                    <?php if ($_smarty_tpl->tpl_vars['URL']->value == "http://localhost/avvalmoshaver") {?>دسترسی لوكال <?php }?>
                    <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['tplModule']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
<?php echo '<script'; ?>
>
$(function(){
    $('[data-toggle="tooltip"]').tooltip();
    $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-left").addClass("fa-angle-down");
    });
    $('.side-nav .collapse').on("show.bs.collapse", function() {                        
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-left");        
    });
})    
<?php echo '</script'; ?>
>    

<?php } else { ?>
	<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['tplModule']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<?php }?>
</body>
</html>
<?php }
}
?>