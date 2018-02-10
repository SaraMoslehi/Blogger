<div id="toolbar" class="admin">
	{if $id}
        <div class="icon">
            <a href="javascript:form1.submit();" onClick="return checkfrm(form1)"><img src="{$URL}/images/admin/ok.png" /><span>ثبت</span></a>
        </div>
    {else}
        <div class="icon">
            <a href="javascript:form1.submit();" onClick="return checkfrm(form1)"><img src="{$URL}/images/admin/ok.png" /><span>ارسال</span></a>
        </div>
    {/if}
	{if $backurl}
		<div class="icon">
			<a href="javascript:void(0)" onClick="document.location.href='{$backurl}'"><img src="{$URL}/images/admin/back.png" /><span>بازگشت</span></a>
		</div>
	{/if}
	{if $id}
		<div class="icon">
			<a href="javascript:void(0)" onClick="document.location.href='{$repurl}'"><img src="{$URL}/images/admin/reply.gif" width="25px"/><span>پاسخ</span></a>
		</div>
	{/if}
	{if $id}
		<div class="icon">
			<a href="javascript:void(0)" onClick="document.location.href='{$frwurl}'"><img src="{$URL}/images/admin/forward.gif" width="25px"/><span>فوروارد</span></a>
		</div>
	{/if}
</div>
