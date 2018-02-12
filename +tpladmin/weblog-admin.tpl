<form id="form1" method="post" action="{$href}" enctype="multipart/form-data" style="text-align:right">
<input type="hidden" name="action" value="{if $id}update{else}add{/if}">
<table class="data">
	<tr>
    	<td>
        	عنوان وبلاگ
        </td>
        <td>
		    <input type="text" name="weblogname" value="{if isset($default.weblogname)}{$default.weblogname}{/if}" style="width: 500px">
        </td>
    </tr>
    <tr>
    	<td colspan="2" style="text-align: center">
        	{include file="_btn.tpl"}
    	</td>
    </tr>
</table>
</form>