<?php /* Smarty version 3.1.27, created on 2018-02-11 18:55:43
         compiled from "+tplpublic\index.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:7025397835a80839f3f37d4_74662235%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '213ac47ec0b3c1106ddd6d143c2a0674d0d32816' => 
    array (
      0 => '+tplpublic\\index.tpl',
      1 => 1518371417,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7025397835a80839f3f37d4_74662235',
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a80839f44ea55_79326020',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a80839f44ea55_79326020')) {
function content_5a80839f44ea55_79326020 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '7025397835a80839f3f37d4_74662235';
?>
<!DOCTYPE html>
<html lang="fa-IR" dir="rtl">
<head>
	<?php echo $_smarty_tpl->getSubTemplate ("_head1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

</head>
<body>
<div class="container-fluid">
    <div class="row navbar1 equal">
        <div class="col-xs-6 col-sm-6 col-md-1 logopic">
		</div>
        <div class="col-xs-6 col-sm-6 col-md-9">
            <div class="row">
                <nav class="navbar navbar-default navbar1">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar" >
                        <ul class="nav navbar-nav" id="override1">
                            <li>
                                <a class="nav1" href="<?php echo URL;?>
"><span class=""></span> خانه</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav" id="override1">
                            <li>
                                <a class="nav1" href="<?php echo URL;?>
\signup\"><span class=""></span> ثبت نام</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav" id="override1">
                            <li>
                                <a class="nav1" href="<?php echo URL;?>
\admin\"><span class=""></span> ورود</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
    	</div>
        <div class="hidden-xs hidden-sm col-md-2 col-lg-2">
            <div class="row">
                <form class="navbar-form search" role="search" method="post" action="/tag-list/" enctype="multipart/form-data">
                <div class="input-group">
                    <input type="text" class="form-control search" placeholder="جستجو..." name="action" >
                    <div class="input-group-btn">
                        <button class="btn btn-defaul search" type="submit">
                        	<i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
                </form>
        	</div>
		</div>
	</div>
</div>
<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tplModule']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0);
?>

<div class="container-fluid footerrowback" >
    <div class="container">
        <div class="row footerrow">
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                <h2>
                    برنامه نویسی و طراحی :::
                </h2>
            </div>
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
        </div>
        <div class="row footerrow">
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <h3>بهروز جان‌فدا</h3>
                شماره دانشجویی: 96242243
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <h3>مرجان پوست زاده</h3>
                شماره دانشجویی: 96242234
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <h3>سارا مصلحی</h3>
                شماره دانشجویی: 96242945
            </div>
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
        </div>
    </div>
</div>
</body>

<?php echo '<script'; ?>
>
$(document).ready(function() {
    $('.navbar a.dropdown-toggle').on('click', function(e) {
        var $el = $(this);
        var $parent = $(this).offsetParent(".dropdown-menu");
        $(this).parent("li").toggleClass('open');

        if(!$parent.parent().hasClass('nav')) {
            $el.next().css({"top": $el[0].offsetTop, "left": $parent.outerWidth() - 4});
        }

        $('.nav li.open').not($(this).parents("li")).removeClass("open");

        return false;
    });
});<?php echo '</script'; ?>
>

</html>
<?php }
}
?>