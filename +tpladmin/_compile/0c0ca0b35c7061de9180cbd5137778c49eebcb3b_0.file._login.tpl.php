<?php /* Smarty version 3.1.27, created on 2018-02-10 08:02:32
         compiled from "+tpladmin\_login.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1921325675a7e99082f5dc9_36599282%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0c0ca0b35c7061de9180cbd5137778c49eebcb3b' => 
    array (
      0 => '+tpladmin\\_login.tpl',
      1 => 1518245264,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1921325675a7e99082f5dc9_36599282',
  'variables' => 
  array (
    'URL' => 0,
    'title' => 0,
    'href' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a7e9908481331_81848440',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a7e9908481331_81848440')) {
function content_5a7e9908481331_81848440 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1921325675a7e99082f5dc9_36599282';
?>
<div class="container" style="margin-top:-60px;" >
    <div class="row">
        <div class="col-xs-12 col-centered">
	        <div id="login-logo">
            	<img src="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/images/skin/1/Blogger.jpg" alt="Parsayanedu" >
            </div>
	        <div id="login-logo">
                 سامانه مدیریتی BMS Blogger
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                     <?php echo $_smarty_tpl->tpl_vars['title']->value;?>
&nbsp <i class="fa fa-sign-in"></i>
                </div>
                <div class="panel-body">
                    <div id="login-note">نام کاربری و گذرواژه را وارد کنید.</div>
                    <div id="messages" class="alert alert-danger myhide alert-dismissable">
                    	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    	<strong></strong>
                    </div>
                    <form action="<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
" method="post" id="form" class="form-horizontal" enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                    <input class="form-control" id="user" type="text" placeholder="Username" name="frm_username"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                    <input class="form-control" id="pass" type="password" placeholder="Password" name="frm_password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <button type="submit" class="btn btn-default btn-blue" id="submit" onClick="return checkfrm(form)" value="submit" >ورود</button>
                            </div>
                        </div>
                    </form>
		            <a href="<?php echo $_smarty_tpl->tpl_vars['URL']->value;?>
/">بازگشت به صفحه نخست</a>
                </div>
            </div>

        </div> <!-- col -->
    </div> <!-- row -->
</div> <!-- container -->

<?php echo '<script'; ?>
 type="text/javascript" language="javascript">
$('document').ready( function() {
	$('#messages').hide();
	
	<?php if (isset($_GET['flag'])) {?>
		$('#messages').show();
		<?php if ($_GET['flag'] == 6) {?>
			$('#messages strong').html('نام کاربری یا کلمه عبور اشتباه است.');
		<?php } elseif ($_GET['flag'] == 4) {?>
			$('#messages strong').html('شما با موفقیت از سیستم خارج شدید!');
		<?php } elseif ($_GET['flag'] == 9) {?>
			$('#messages strong').html('متاسفانه از کاراکتر‌های غیر مجاز استفاده کردید. آی پی شما ثبت شد.');
		<?php }?>
		return false;
	<?php }?>
	
});
function checkfrm(form){
	if(!form.frm_username.value){
		$('#messages').show();
		$('#messages strong').html('درج نام کاربری اجباری است!');
		return false;
	}
	if(!form.frm_password.value){
		$('#messages').show();
		$('#messages strong').html('درج گذرواژه اجباری است!');
		return false;
	}
	return true;
}
<?php echo '</script'; ?>
>

<?php }
}
?>