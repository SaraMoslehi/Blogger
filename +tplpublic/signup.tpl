<div class="container-fluid contactus-con">
	<div class="row contactus-row">
    	<h2>ایجاد حساب کاربری :::</h2>
    </div>
    <div id="messages" class="alert alert-danger myhide alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong></strong>
    </div>
    <form class="contactus-form" enctype="multipart/form-data" method="post" >
        <div class="row equal " >
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-3">
            	<input type="text" class="form-control contactus-input" placeholder="نام" name="user_name" >
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-3">
            	<input type="text" class="form-control contactus-input" placeholder="نام خانوادگی" name="user_family" >
            </div>
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        </div>
        <div class="row equal">
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-3">
            	<input type="text" class="form-control contactus-input" placeholder="نام کاربری*" name="username" >
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-3">
            	<input type="text" class="form-control contactus-input" placeholder="گذرواژه*" name="password" >
            </div>
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        </div>
        <div class="row equal">
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-3">
            	<input type="text" class="form-control contactus-input" placeholder="همراه" name="mobile" >
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-3">
            	<input type="text" class="form-control contactus-input" placeholder="ایمیل" name="email" >
            </div>
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        </div>
        <div class="row equal ">
   	        <div class="hidden-xs hidden-sm col-md-7">
            </div>
        	<div class="col-xs-12 col-sm-12 col-md-2">
                <button type="submit" class="btn contactus-btn" >
                	ثبت نام
                </button>
                <input type="hidden" name="fs"  value="submit" >
            </div>
   	        <div class="hidden-xs hidden-sm col-md-3">
            </div>
        </div>
    </form>
</div>

{literal}
<script type="text/javascript" language="javascript">
$('document').ready( function() {
	$('#messages').hide();
	{/literal}
	{if isset($smarty.get.flag)}
		$('#messages').show();
		{if $smarty.get.flag==3}
			$('#messages strong').html('حساب کاربری شما ایجاد شد.');
		{elseif $smarty.get.flag==10}
			$('#messages strong').html('درج نام کاربری و گذرواژه اجباری است!');
		{elseif $smarty.get.flag==11}
			$('#messages strong').html('نام کاربری تکراری است. دوباره تلاش کنید.');
		{/if}
		return false;
	{/if}
	{literal}
});
</script>
{/literal}
