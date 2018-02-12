<div class="container">
<form id="form1" method="post" action="{$href}" enctype="multipart/form-data" style="text-align:right">
<input type="hidden" name="action" value="{if $id}update{else}add{/if}">
    <div class="row">
        <div class="col-xs-6">
            عنوان:
            <input type="text" name="title" value="{$default.title}" style="width: 500px">
        </div>
        <div class="col-xs-6">
            <select name="weblogregtime" >
                <option value="0" {if empty($item.weblogregtime)}selected="selected"{/if}>
                    هیچ کدام
                </option>
                {foreach from=$weblogs key=key item=item}
                <option value="{$item.weblogregtime}" {if $item.weblogregtime eq $default.weblogregtime}selected{/if}>
                    {$item.weblogname}
                </option>
                {/foreach}
            </select>
        </div>
	</div>
    <div class="row">
        <div class="col-xs-12 ">
            متن
            <textarea name="weblogcontext" style="width: 700px; height: 380px">
                {$default.weblogcontext}
            </textarea>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 ">
            {include file="_btn.tpl"}
        </div>
    </div>
</form>
</div>
<script type="text/javascript" language="javascript" src="{$URL}/scripts/optNewsgroup.js.php"></script>
{literal}
<script type="text/javascript" src="scripts/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="scripts/ckfinder/ckfinder.js"></script>
<script type='text/javascript'>
	CKEDITOR.replace( 'weblogcontext', {
		toolbar:'MyToolbar',
		filebrowserBrowseUrl : '/scripts/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl : '/scripts/ckfinder/ckfinder.html?Type=Images',
		filebrowserFlashBrowseUrl : '/scripts/ckfinder/ckfinder.html?Type=Flash',
		filebrowserUploadUrl : '/scripts/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl : '/scripts/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl : '/scripts/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
		height: '300',
		width: '830',
		contentsLangDirection : 'rtl'
	} );
</script>
<script>
$(document).ready(function(){
	$("#lang").change();
	$('#frm_date').datepicker({
		changeMonth: true,
		changeYear: true,})
});
</script>
<script type="text/javascript" language="javascript">
function checkfrm(form){
	if(!form.frm_news.value){
		alert('همکار محترم، ثبت مطلب بدون عنوان غیر ممکن است!');
		return false;
	}
	if(!form.frm_departmentid.value || form.frm_departmentid.value==0){
		alert('همکار گرامی، ثبت دپارتمان اجباری است!');
		return false;
	}
	if(!form.frm_newsgroupid.value || form.frm_newsgroupid.value==0){
		alert('همکار گرامی، ثبت گروه مطالب اجباری است!');
		return false;
	}
	return true;
}

</script>
{/literal}