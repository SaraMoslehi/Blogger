{if $numrows ne 0}
<div id="paging">
	{if $page lt $numpage}
		<a href="javascript:void(0)" onclick="document.location.href=document.location.href.replace(/&page=([0-9]*)/, '')+'&page={$numpage}'" title="آخر"><img src="images/admin/last.png" alt="آخر" /></a>
		<a href="javascript:void(0)" onclick="document.location.href=document.location.href.replace(/&page=([0-9]*)/g, '')+'&page={$page+1}'" title="بعدی"><img src="images/admin/next.png" alt="بعدی" /></a>
	{else}
		<img src="images/admin/last.png" alt="آخر" />
		<img src="images/admin/next.png" alt="بعدی" />
	{/if}
	<select onchange="document.location.href=document.location.href.replace(/&page=([0-9]*)/g, '')+'&page='+this.value">
		{section name=page loop=$numpage}
			<option value="{$smarty.section.page.iteration}" {if $smarty.section.page.iteration eq $page}selected{/if}>{$smarty.section.page.iteration}</option>
		{/section}
	</select>
	{if $page gt 1}
		<a href="javascript:void(0)" onclick="document.location.href=document.location.href.replace(/&page=([0-9]*)/g, '')+'&page={$page-1}'" title="قبلی"><img src="images/admin/previous.png" alt="قبلی" /></a>
		<a href="javascript:void(0)" onclick="document.location.href=document.location.href.replace(/&page=([0-9]*)/g, '')+'&page=1'" title="اول"><img src="images/admin/first.png" alt="اول" /></a>
	{else}
		<img src="images/admin/previous.png" alt="قبلی" />
		<img src="images/admin/first.png" alt="اول" />
	{/if}
	تعداد رديف در صفحه: <select style="width: 45px;" name="frm_numRecord" onchange="document.location.href='{$href|regex_replace:'/((&amp;)|(&))recperpage=[^&]*/':''|regex_replace:'/((&amp;)|(&))page=[^&]*/':''}&recperpage='+this.value">
				   		<option value="5" {if $recPerPage eq 5}selected{/if}>5</option>
						<option value="10" {if $recPerPage eq 10}selected{/if}>10</option>
						<option value="15" {if $recPerPage eq 15}selected{/if}>15</option>
						<option value="20" {if $recPerPage eq 20}selected{/if}>20</option>
						<option value="25" {if $recPerPage eq 25}selected{/if}>25</option>
						<option value="30" {if $recPerPage eq 30}selected{/if}>30</option>
						<option value="50" {if $recPerPage eq 50}selected{/if}>50</option>
                        <option value="100" {if $recPerPage eq 100}selected{/if}>100</option>
                        <option value="200" {if $recPerPage eq 200}selected{/if}>200</option>
   				   </select>
</div>
{/if}