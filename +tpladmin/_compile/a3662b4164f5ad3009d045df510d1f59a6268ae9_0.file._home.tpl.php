<?php /* Smarty version 3.1.27, created on 2018-02-10 15:13:00
         compiled from "+tpladmin\_home.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:342768455a7efdec7b7d65_26769190%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a3662b4164f5ad3009d045df510d1f59a6268ae9' => 
    array (
      0 => '+tpladmin\\_home.tpl',
      1 => 1518271978,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '342768455a7efdec7b7d65_26769190',
  'variables' => 
  array (
    'URL' => 0,
    'aid' => 0,
    'apic' => 0,
    'esmfamil' => 0,
    'admin' => 0,
    'PassLenght' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a7efdec7f5de0_74654315',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a7efdec7f5de0_74654315')) {
function content_5a7efdec7f5de0_74654315 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '342768455a7efdec7b7d65_26769190';
?>
<div class="row">
	<div class="col-sm-12 col-md-6">

    <div class="homebox red">
        <div class="homeboxhead">
            داشبورد کاربری
            <a href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/index.php?option=adm_adminpersonaledit">
                <div class="homeboxlink">
                    جزئیات
                </div>
            </a>
<!--            <a style="cursor:url(<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/admin/magnify.cur), pointer;" href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/admins/<?php echo $_smarty_tpl->tpl_vars['aid']->value;?>
" rel='thumbnail'>
                <?php if ($_smarty_tpl->tpl_vars['apic']->value == 1) {?>
                    <img src="images/admins/thumb_<?php echo $_smarty_tpl->tpl_vars['aid']->value;?>
" title="بزرگنمایی" alt="عكس كاربر" class="images" />
                <?php } else { ?>
                    <img src="images/admins/user-male" title="بزرگنمایی" alt="عكس كاربر"  class="images" />
                <?php }?>
            </a>
-->        </div>
        نام و نام خانوادگی: <?php echo $_smarty_tpl->tpl_vars['esmfamil']->value;?>
<br />
        نام کاربری: <?php echo $_smarty_tpl->tpl_vars['admin']->value;?>
<br />
        امنیت پسورد: <?php echo $_smarty_tpl->tpl_vars['PassLenght']->value;?>
<br />
        <?php if ($_smarty_tpl->tpl_vars['URL']->value == "http://localhost/daneshpazir") {?>
        	<span style="color:black">(دسترسی لوكال)</span>
        <?php } else { ?>
        	<span style="color:yellow">(دسترسی آنلاین)</span>
        <?php }?>
    </div>
    </div>
	<div class="col-sm-12 col-md-6 center">
	<div class="homebox green">
        <div class="homeboxhead">
            آمار بازدید
            <a href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/index.php?option=adm_visit-chart">
                <div class="homeboxlink">
                    جزئیات
                </div>
            </a>
        </div>
        تعداد بازدید سایت در 24 ساعت گذشته: <br />
        تعداد بازدید سایت در 48 ساعت گذشته: <br />
        تعداد بازدید در کل: <br /> 
        تعداد كاربران آنلاین: <br />
    </div>
    </div>
</div>
<div class="row">
	<div class="col-sm-12 col-md-12">
    <div class="homebox orange">
        <div class="homeboxhead">
            پیغام سیستم
            <a href="#">
                <div class="homeboxlink">
                    آرشیو
                </div>
            </a>
        </div>
        اقدامات گسترده برنامه‌نویسی در حال انجام است. از شکیبایی شما سپاس گذاریم.<br>
		هر زمان صفحه به هم ریخته بود با دو بار رفرش کردن صفحه، آن را مرتب کنید.
    </div>
    </div>
</div><?php }
}
?>