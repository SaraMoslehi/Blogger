<div id="toolbar" class="admin">
	{if !isset($hideSubmit)}
        {if isset($ghaboolibot)}
            <div class="icon">
                <a href="javascript:form1.submit();" onClick="return checkfrm(form1)"><img src="{$URL}/images/admin/alumni.png" /><span>ثبت قبولی</span></a>
            </div>
            <div class="icon">
                <a href="javascript:form1.reset();"><img src="{$URL}/images/admin/reload.png" /><span>انصراف</span></a>
            </div>
        {elseif isset($visitChart)}
            	<div class="icon3">
                    <a href="javascript:form1.submit();" onClick="return checkfrm(form1)"><img src="{$URL}/images/admin/ok.png" /></a>
                </div>
        {else}
            <div class="icon">
                <a href="javascript:form1.submit();" onClick="return checkfrm(form1)"><img src="{$URL}/images/admin/ok.png" /><span>تایید</span></a>
            </div>
            <div class="icon">
                <a href="javascript:form1.reset();"><img src="{$URL}/images/admin/reload.png" /><span>انصراف</span></a>
            </div>
        {/if}
     {/if}
     {if isset($Hamkarimojadad)}
        <div class="icon2">
        <a href="{$URL}/index.php?option=adm_admin-admin&action=rehired&id={$id}" ><img src="{$URL}/images/admin/hired.gif" height="45px" /><span>همکاری مجدد</span></a>
        </div>
    {/if}
	{if isset($backurl)}
		<div class="icon">
			<a href="javascript:void(0)" onClick="document.location.href='{$backurl}'"><img src="{$URL}/images/admin/back.png" /><span>بازگشت</span></a>
		</div>
	{/if}
	{if isset($envaPrint)}
		<div class="icon">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_envaprint&popup=1&id={$envaPrint}',700 ,894);"><img src="{$URL}/images/admin/print.jpeg" /><span>پرینت</span></a>
		</div>
	{/if}
	{if isset($shobePrint)}
		<div class="icon2">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_shobeprint3&popup=1&id={$shobePrint}',750 ,894);"><img src="{$URL}/images/admin/report.png" width="40px" /><span>گزارش نوع 3</span></a>
		</div>
		<div class="icon2">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_shobeprint2&popup=1&id={$shobePrint}',750 ,894);"><img src="{$URL}/images/admin/printbig.gif" /><span>گزارش نوع 2</span></a>
		</div>
		<div class="icon2">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_shobeprint&popup=1&id={$shobePrint}',750 ,894);"><img src="{$URL}/images/admin/printbig.gif" /><span>گزارش نوع 1</span></a>
		</div>
	{/if}
	{if isset($userezamPrint)}
		<div class="icon">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_userezam-admin&action=print&popup=1&id={$userezamPrint}',800 ,1000);"><img src="{$URL}/images/admin/report.png" width="25px" /><span>پرینت فرم</span></a>
		</div>
	{/if}
	{if isset($majorPrint)}
		<div class="icon">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_majorprint&popup=1&id={$majorPrint}',750 ,894);"><img src="{$URL}/images/admin/print.jpeg" /><span>پرینت</span></a>
		</div>
	{/if}
	{if isset($classPrint)}
		<div class="icon2">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_classprint&popup=1&id={$classPrint}',750 ,894);"><img src="{$URL}/images/admin/printbig.gif" /><span>پرینت</span></a>
		</div>
	{/if}
	{if isset($hozghiPrint)}
		<div class="icon2">
			<a href="javascript:popupWin('{$URL}/index.php?option=adm_hozghiprint&popup=1&id={$hozghiPrint}',750 ,894);"><img src="{$URL}/images/admin/hozghi.gif" /><span>حضورغیاب</span></a>
		</div>
	{/if}
	{if isset($userFile)}
		<div class="icon">
			<a href="{$URL}/index.php?option=adm_parvande-admin&action=edit&id={$userFile}" target="_blank"><img src="{$URL}/images/admin/cheer.png" /><span>پرونده</span></a>
		</div>
	{/if}
	{if isset($envaShow)}
		<div class="icon">
			<a href="{$URL}/index.php?option=adm_enva-admin&action=edit&id={$envaShow}" target="_blank"><img src="{$URL}/images/admin/question.png" /><span>انتخاب واحد</span></a>
		</div>
	{/if}
	{if isset($ghabooliShow)}
        <div class="icon">
			<a href="{$URL}/index.php?option=adm_sabtenam-admin&action=ghabooli&id={$ghabooliShow}" target="_blank"><img src="{$URL}/images/admin/alumni.png" /><span>ثبت قبولی</span></a>
        </div>
	{/if}
	{if isset($parvandeShow)}
        <div class="icon">
			<a href="{$URL}/index.php?option=adm_parvande-admin&action=edit&id={$parvandeShow}" target="_blank"><img src="{$URL}/images/admin/cheer.png" /><span>پرونده</span></a>
        </div>
	{/if}
	{if isset($sabtenamShow)}
        <div class="icon">
			<a href="{$URL}/index.php?option=adm_sabtenam-admin&action=edit&id={$sabtenamShow}" target="_blank"><img src="{$URL}/images/admin/sabtenam.jpeg" /><span>فرم ثبت‌نام</span></a>
        </div>
	{/if}
   	{if isset($parvandetezShow)}
        <div class="icon">
			<a href="{$URL}/index.php?option=adm_parvandetez-admin&action=edit&id={$parvandetezShow}" ><img src="{$URL}/images/admin/cheer.png" /><span>پرونده</span></a>
        </div>
	{/if}
	{if isset($sabttezShow)}
        <div class="icon">
			<a href="{$URL}/index.php?option=adm_userprojects-admin&action=edit&id={$sabttezShow}" ><img src="{$URL}/images/admin/sabtenam.jpeg" /><span>فرم ثبت‌ پروژه</span></a>
        </div>
	{/if}
    {if isset($printCard)}
        <div class="icon">
            <a href="javascript:popupWin('{$URL}/index.php?option=adm_cardprint&popup=1&id={$printCard}',800,1000);" ><img src="{$URL}/images/admin/cardprint.gif" /><span>پرینت کارت</span></a>
        </div>
    {/if}
    {if isset($Welcomesms)}
        <div class="icon2">
        <a href="{$URL}/index.php?option=adm_welcomesms-admin&id={$Welcomesms}" target="_blank"><img src="{$URL}/images/admin/sms.gif" height="25px" /><span>ارسال پیامک خوش‌آمدگویی</span></a>
        </div>
    {/if}
    {if isset($SmS)}
        <div class="icon2">
        <a href="{$URL}/index.php?option=adm_usermobilesms&id={$SmS}" target="_blank"><img src="{$URL}/images/admin/sms.gif" height="25px" /><span>ارسال پیامک</span></a>
        </div>
    {/if}
    {if isset($Erja)}
        <div class="icon">
			<a target="_blank" href="{$URL}/index.php?option=adm_erja-admin&formid={$Erja}&back={$moduleid}"><img src="{$URL}/images/admin/order.png" height="23px;" /><span>ارجاع</span></a>
        </div>
    {/if}
    {if isset($usersmssend)}
        <div class="icon2">
			<a href="javascript:void(0)" onClick="document.location.href='{$URL}/index.php?option=adm_admin-admin&action=usersmssend&id={$usersmssend}'"><img src="{$URL}/images/admin/sms.gif" width="25px"/><span>پیامک گذرواژه</span></a>
        </div>
    {/if}
    {if isset($approvefinrq)}
        <div class="icon2">
			<a href="javascript:void(0)" onClick="document.location.href='{$URL}/index.php?option=adm_finreq-admin&action=approve&id={$approvefinrq}'"><img src="{$URL}/images/admin/approve.svg" width="40px"/><span>تایید پرداخت</span></a>
        </div>
    {/if}
    {if isset($moduleHelp)}
        <div class="icon">
            <a href="javascript:void(0)" onclick="show_row(0)">
                <img src="{$URL}/images/admin/search.png" height="23px;" />
                <span>راهنما</span>
            </a>
        </div>
    {/if}
</div>
<div id="help-row" style="display:none">
	{$moduleHelp}
</div>
<script type="text/javascript">
function show_row(value){
	$("#help-row").toggle();
}
</script>

