<div class="container">
    <div class="row" style="text-align:center" >
			<h1>BMS Blogger</h1>
	</div>
</div>
<table>
	{foreach from=$list key=key item=item name=i}
	<tr >
		
        	
		<td style="text-align:center">{$smarty.foreach.i.iteration}</td>	
            {foreach from=$fieldList key=key2 item=item2}
					<td>{$item.$key2|default:'&nbsp;'}</td>
			{/foreach}
	</tr>
	{/foreach}
</table>