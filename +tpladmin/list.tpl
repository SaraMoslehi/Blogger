<table style="width:100%">
    <tr>
    <td colspan="2">
    <div id="toolbar">
        <table cellpadding="0" style="direction: rtl; text-align: right;">
            <tr>
            {if !isset($hidenew) && !isset($newPage)}
                <td>
                    <div class="icon">
                        <a href="javascript:document.location.href='index.php?option={$adminPage}'"><img src="{$URL}/images/admin/new.png" /><span>جدید</span></a>
                    </div>
                </td>
            {/if}
            {if isset($newPage)}
                <td>
                    <div class="icon">
                        <a href="javascript:document.location.href='index.php?option={$newPage}'"><img src="{$URL}/images/admin/new.png" /><span>جدید</span></a>
                    </div>
                </td>
            {/if}
            </tr>
        </table>
    	</div>
        </td>
    </tr>
</table> 
<form name="form1" target="_self" id="form1" method="post" action="index.php?option={$adminPage}&action=multidel">

<input type="hidden" name="frm_primaryField" value="{$listPrimary}" />
<input type="hidden" name="frm_listTable" value="{$listTable}" />
<input type="hidden" name="frm_printFields" value="{$printFields}" />
<input type="hidden" name="frm_join" value="{$join}" />
<input type="hidden" name="frm_as" value="{$as}" />
<input type="hidden" name="frm_backurl" value="{$backurl}" />
<table class="list">
	<tr>    	
		<th style="width: 50px; font-size:14px; padding:10px 0px 0px 0px;">انتخاب همه<input style="cursor:pointer" type="checkbox" onclick="togglebeh(this)" title="انتخاب همه"/></th>
		<th style="width: 1px">ردیف</th>
        {foreach from=$fieldList key=key item=item  name=j}
			{if isset($item.sortby)}
            	<th {if isset($item.cwidth)}width="{$item.cwidth}px"{/if}{if $sortby eq $item.sortby}style="background:#00125A;text-align: center;"{/if}>
                <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                {if $sortby eq $item.sortby}
                	<td style=" border-style:hidden ">
                		<img src="{if $sortorder eq 'ASC'}{$URL}/images/admin/s_asc.png{else}{$URL}/images/admin/s_desc.png{/if}" />
                    </td>
                {/if}
                	<td style=" border-style:hidden; font-size:18px;">
                		<a href="{$href|regex_replace:'/((&amp;)|(&))sortby=[^&]*/':''|regex_replace:'/((&amp;)|(&))sortorder=[^&]*/':''}&sortby={$item.sortby}&sortorder={if $sortorder eq 'ASC'}DESC{else}ASC{/if}">
                        	{$item.title}
                        </a>
                	</td >
                {if $sortby eq $item.sortby}
                	<td style=" border-style:hidden ">
                		<img src="{$URL}/images/admin/delete-small.png" style="cursor:pointer" onclick="redirect('{$href}&sortby=removesort')" />
                	</td>
                {/if}
                </tr>
				</table>
                </th>
            {else}
            	<th {if isset($item.cwidth)}width="{$item.cwidth}px"{/if}>{$item.title}</th>{/if}
		{/foreach}
        {if !isset($ReportList) }
			<th style="width: 1px">امكانات</th>
        {else if isset($ReportList) && isset($RetriveList)}
			<th style="width: 1px">امكانات</th>
        {/if}
	</tr>
	{foreach from=$list key=key item=item name=i}
	<tr class="{cycle values="listTd2,listTd1"}" onmouseover="overclass(this)" onmouseout="lastclass(this)" onclick="this.childNodes[1].childNodes[0].checked=this.childNodes[1].childNodes[0].checked?false:true;selectclass(this.childNodes[1].childNodes[0]);selectRow(event,this);">
		
        <td style="text-align:center;">
        	<input type="checkbox" name="frm_printitem[]" id="frm_printitem" class="searchItem" value="{$item.$listPrimary}"  onchange="selectclass(this)" title="انتخاب" />
		<td style="text-align:center">{$smarty.foreach.i.iteration}</td>	
            {foreach from=$fieldList key=key2 item=item2}
					<td>{$item.$key2|default:'&nbsp;'}</td>
			{/foreach}
            {if !isset($ReportList)}
            	{if isset($item.xfishservicesquantity)}<!--  جهت جداسازی تمپلیت ویرایش فیش خدمات و فیش های مالی -->
                <td style="width: 40px; text-align: center" nowrap>
                        <img alt="ویرایش" title="ویرایش" style="cursor:pointer; height:15px" src="{$URL}/images/admin/edit1.gif" onClick="document.location.href='index.php?option={$adminPage}&action=edit&id={$item.$listPrimary}'">&nbsp;&nbsp;
                    {if !isset($delDisabled)}
                        <img alt="حذف" title="حذف" style="cursor:pointer; height:15px" src="{$URL}/images/admin/del1.gif" onClick="if(confirm('با حذف این ردیف، بررسی‌های احتمالی مربوط به آن نیز حذف می‌گردد. آیا از حذف این اطلاعات مطمئن هستید؟'))document.location.href='index.php?option={$adminPage}&action=del&id={$item.$listPrimary}'">
                    {/if}
                </td>
                {else}
                <td style="width: 40px; text-align: center" nowrap>
                        <img alt="ویرایش" title="ویرایش" style="cursor:pointer; height:15px" src="{$URL}/images/admin/edit1.gif" onClick="document.location.href='index.php?option={$adminPage}&action=edit&id={$item.$listPrimary}'">&nbsp;&nbsp;
                   {if !isset($delDisabled)}
                        <img alt="حذف" title="حذف" style="cursor:pointer; height:15px" src="{$URL}/images/admin/del1.gif" onClick="if(confirm('با حذف این ردیف، بررسی‌های احتمالی مربوط به آن نیز حذف می‌گردد. آیا از حذف این اطلاعات مطمئن هستید؟'))document.location.href='index.php?option={$adminPage}&action=del&id={$item.$listPrimary}'">
                    {/if}
                </td>
                {/if}
            {/if}
	</tr>
	{foreachelse}
	<tr><td colspan="{$smarty.foreach.j.iteration+3}" style="text-align: center">اطلاعاتی جهت نمایش وجود ندارد.</td></tr>
	{/foreach}
</table>
</form>
{if isset($multiDel)}
    <div style=" display: inline-block;float:right">
        <img src="images/admin/arrow_ltr.png" />
        حذف موارد انتخاب شده
        <img title="حذف" style="cursor:pointer" src="images/admin/b_drop.png" onClick="if(cheknull()) if(confirm('اخطار: شما در حال حذف هم‌زمان چند ردیف هستید.آیا مطمئن هستید؟')){ document.getElementById('form1').action='index.php?option={$adminPage}&action=multidel';document.getElementById('form1').target='_self'; document.getElementById('form1').submit() }">
    </div>
{/if}

{literal}
<script type="text/javascript">
function FormatNumberBy3(num, decpoint, sep)
{
  // check for missing parameters and use defaults if so
  if (arguments.length == 2)
  {
    sep = ",";
  }
  if (arguments.length == 1)
  {
    sep = ",";
    decpoint = ".";
  }
  // need a string for operations
  num = num.toString();

  aa="";
  // remove sep from buffer
  for (i=0; i < num.length ;i++)
  {
     var check = num.charAt(i);
     if (check != sep)
        aa += check;
  }
  a = aa.split(decpoint);

// separate the whole number and the fraction if possible
  //a = num.split(decpoint);
  x = a[0]; // decimal
  y = a[1]; // fraction
  z = "";
  //x = "";

  if (typeof(x) != "undefined")
  {
    // reverse the digits. regexp works from left to right.
    for (i=x.length-1;i>=0;i--)
      z += x.charAt(i);
    // add seperators. but undo the trailing one, if there
    z = z.replace(/(\d{3})/g, "$1" + sep);
    if (z.slice(-sep.length) == sep)
      z = z.slice(0, -sep.length);
    x = "";
    // reverse again to get back the number
    for (i=z.length-1;i>=0;i--)
      x += z.charAt(i);
    // add the fraction back in, if it was there
    if (typeof(y) != "undefined")
    {
        if (y.length > 2)
            y = y.substring(0, 2);
        x += decpoint + y;
    }
  }
  return x;
}
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

function removeNumberSeprator(sepratedNumber) {
    var numberArray = sepratedNumber.split(',');
    var limit = numberArray.length;
    sepratedNumber ='';
    for (var i=0; i<limit; i++)
        sepratedNumber += numberArray[i];
    return sepratedNumber;
}
function seprateNumber(obj)
{
  obj.value = FormatNumberBy3(obj.value, ".", ",");
}
</script>
{/literal}
<script type="text/javascript">
function selectRow(event,row)
{
	var x = event.target.nodeName;
	if (x!="INPUT")
	{
		var firstInput = row.getElementsByTagName('input')[0];
		firstInput.checked = !firstInput.checked;
	}
}
</script>

{if isset($msg)}
{if $msg eq 1}
	<script>alert('شما نویسنده این پیام نیستید و اجازه ویرایش این پیام را ندارید.')</script>
{elseif $msg eq 2}
	<script>alert('گیرنده این پیام را خوانده و شما اجازه ویرایش این پیام را ندارید.')</script>
{elseif $msg eq 3}
	<script>alert('شما دبیر این صورتجلسه نیستید و اجازه ویرایش آن را ندارید.')</script>

<!-------error message from userezam-admin to prevent insert same record----------->
{elseif $msg eq 4}
	<script>alert(' همکار گرامی! قبلا فرمی با شماره موبایل مشابه درج شده است.  لطفا براساس شماره موبایل جستجو کرده و یکی از رکورد ها را پاک کنید. ')</script>
{elseif $msg eq 5}
	<script>alert(' همکار گرامی! قبلا فرمی با نام و نام خانوادگی مشابه درج شده است.  لطفا براساس نام و ناخانوادگی جستجو کرده و یکی از رکورد ها را پاک کنید. ')</script>
{elseif $msg eq 6}
	<script>alert(' همکار گرامی! قبلا فرمی با مشخصات مشابه درج شده است.  لطفا با مشخصاتی که در دست دارید جستجو کرده و یکی از رکورد ها را پاک کنید. ')</script>
{/if}{/if}