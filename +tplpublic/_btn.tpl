<div id="toolbar" class="admin">
	<div class="icon">
		<a href="javascript:form1.submit();"><img src="../images/admin/ok.png" /><span>تایید</span></a>
	</div>
	<div class="icon">
		<a href="javascript:form1.reset();"><img src="../images/admin/reload.png" /><span>انصراف</span></a>
	</div>
	{if $backurl}
		<div class="icon">
			<a href="javascript:void(0)" onClick="document.location.href='{$backurl}'"><img src="../images/admin/back.png" /><span>بازگشت</span></a>
		</div>
	{/if}
</div>
