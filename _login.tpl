<div class="container" style="margin-top:-60px;" >
    <div class="row">
        <div class="col-xs-12 col-centered">
	        <div id="login-logo">
            	<img src="{$URL}/images/skin/1/Blogger.jpg" alt="Parsayanedu" >
            </div>
	        <div id="login-logo">
                 سامانه مدیریتی BMS Blogger
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                     {$title}&nbsp <i class="fa fa-sign-in"></i>
                </div>
                <div class="panel-body">
                    <div id="login-note">نام کاربری و گذرواژه را وارد کنید.</div>
                    <div id="messages" class="alert alert-danger myhide alert-dismissable">
                    	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    	<strong></strong>
                    </div>
                    <form action="{$href}" method="post" id="form" class="form-horizontal" enctype="multipart/form-data">
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
		            <a href="{$URL}/">بازگشت به صفحه نخست</a>
                </div>
            </div>

        </div> <!-- col -->
    </div> <!-- row -->
</div> <!-- container -->
{literal}
<script type="text/javascript" language="javascript">
$('document').ready( function() {
	$('#messages').hide();
	{/literal}
	{if isset($smarty.get.flag)}
		$('#messages').show();
		{if $smarty.get.flag==6}
			$('#messages strong').html('نام کاربری یا کلمه عبور اشتباه است.');
		{elseif $smarty.get.flag==4}
			$('#messages strong').html('شما با موفقیت از سیستم خارج شدید!');
		{elseif $smarty.get.flag==9}
			$('#messages strong').html('متاسفانه از کاراکتر‌های غیر مجاز استفاده کردید. آی پی شما ثبت شد.');
		{/if}
		return false;
	{/if}
	{literal}
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
</script>
{/literal}
