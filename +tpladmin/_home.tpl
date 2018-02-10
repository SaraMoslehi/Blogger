<div class="row">
	<div class="col-sm-12 col-md-6">

    <div class="homebox red">
        <div class="homeboxhead">
            داشبورد کاربری
            <a href="{$URL}/index.php?option=adm_adminpersonaledit">
                <div class="homeboxlink">
                    جزئیات
                </div>
            </a>
            <a style="cursor:url({$URL}/images/admin/magnify.cur), pointer;" href="{$URL}/images/admins/{$aid}" rel='thumbnail'>
                {if $apic eq 1}
                    <img src="images/admins/thumb_{$aid}" title="بزرگنمایی" alt="عكس كاربر" class="images" />
                {else}
                    <img src="images/admins/user-male" title="بزرگنمایی" alt="عكس كاربر"  class="images" />
                {/if}
            </a>
        </div>
        نام و نام خانوادگی: {$esmfamil}<br />
        آخرین ورود: {$lastloginus}<br />
        نام کاربری: {$admin}<br />
        دپارتمان: {$admindepartmentname}<br />
        شعبه: {$ashobename}<br />
        امنیت پسورد: {$PassLenght}<br />
        {if $URL eq "http://localhost/daneshpazir"}
        	<span style="color:black">(دسترسی لوكال)</span>
        {else}
        	<span style="color:yellow">(دسترسی آنلاین)</span>
        {/if}
    </div>
    </div>
<!--    <div class="homebox yellow">
        <div class="homeboxhead">
            کارتابل
            <a href="#">
                <div class="homeboxlink">
                    جزئیات
                </div>
            </a>
        </div>
        <img src="images/admin/link.png" title="لینک" alt="لینک"  height="18px" style="vertical-align:middle;" />
        لینک خبر:
        {if $newslinksreckol eq 0}
        	دسترسی ندارید!
        {else}
        	{$newslinksreckol}&nbsp;
            {if $newslinksrec ne 0}
                <a href="{$URL}/index.php?option=adm_newslinks-list" style="color:#D30003; text-decoration:none">
                    ({$newslinksrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/commentrec.gif" title="دیدگاه" alt="دیدگاه"  height="18px" style="vertical-align:middle;" />
        دیدگاه کاربران سایت:
        {if $commentreckol eq 0}
        	دسترسی ندارید!
        {else}
        	{$commentreckol}&nbsp;
            {if $commentrec ne 0}
                <a href="{$URL}/index.php?option=adm_comment-list" style="color:#D30003; text-decoration:none">
                    ({$commentrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/commentrec.gif" title="ارتباط با مدیرعامل" alt="ارتباط با مدیرعامل"  height="18px" style="vertical-align:middle;" />
        فرم ارتباط با مدیر عامل:
        {if $directrelreckol eq 0}
        	دسترسی ندارید!
        {else}
        	{$directrelreckol}&nbsp;
            {if $directrelrec ne 0}
                <a href="{$URL}/index.php?option=adm_directrel-list" style="color:#D30003; text-decoration:none">
                    ({$directrelrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/commentrec.gif" title="گزارش اشکال در سایت" alt="گزارش اشکال در سایت"  height="18px" style="vertical-align:middle;" />
        فرم گزارش اشکال در سایت:
        {if $siteproblemsreckol eq 0}
        	دسترسی ندارید!
        {else}
        	{$siteproblemsreckol}&nbsp;
            {if $siteproblemsrec ne 0}
                <a href="{$URL}/index.php?option=adm_siteproblems-list" style="color:#D30003; text-decoration:none">
                    ({$siteproblemsrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/commentrec.gif" title="ارجاعیات" alt="ارجاعیات"  height="18px" style="vertical-align:middle;" />
        ارجاعیات:
        {if $erjareckol eq 0}
        	دسترسی ندارید!
        {else}
        	{$erjareckol}&nbsp;
            {if $erjarec ne 0}
                <a href="{$URL}/index.php?option=adm_erjamy-list" style="color:#D30003; text-decoration:none">
                    ({$erjarec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/news.png" title="درخواست نمایندگی" alt="درخواست نمایندگی"  height="18px" style="vertical-align:middle;" />
        فرم درخواست نمایندگی:
        {if $namayandegirec eq 0}
        	دسترسی ندارید!
        {else}
        	{$namayandegirec}&nbsp;
            {if $namayandeginewrec ne 0}
                <a href="{$URL}/index.php?option=adm_namayandegi-list" style="color:#D30003; text-decoration:none">
                    ({$namayandeginewrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/news.png" title="درخواست همکاری" alt="درخواست همکاری"  height="18px" style="vertical-align:middle;" />
        فرم درخواست همکاری:
        {if $hamkarrec eq 0}
        	دسترسی ندارید!
        {else}
        	{$hamkarrec}&nbsp;
            {if $hamkarnewrec ne 0}
                <a href="{$URL}/index.php?option=adm_hamkar-list" style="color:#D30003; text-decoration:none">
                    ({$hamkarnewrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/news.png" title="درخواست تدریس" alt="درخواست تدریس"  height="18px" style="vertical-align:middle;" />
        فرم درخواست تدریس:
        {if $tadrisrec eq 0}
        	دسترسی ندارید!
        {else}
        	{$tadrisrec}&nbsp;
            {if $tadrisnewrec ne 0}
                <a href="{$URL}/index.php?option=adm_teacher-list" style="color:#D30003; text-decoration:none">
                    ({$tadrisnewrec} جدید)
                </a>
            {/if}
        {/if}<br />    
        <img src="images/admin/news.png" title="درخواست مشارکت" alt="درخواست مشارکت"  height="18px" style="vertical-align:middle;" />
        فرم درخواست مشارکت:
        {if $mosharekatrec eq 0}
        	دسترسی ندارید!
        {else}
        	{$mosharekatrec}&nbsp;
            {if $mosharekatnewrec ne 0}
                <a href="{$URL}/index.php?option=adm_mosharekat-list" style="color:#D30003; text-decoration:none">
                    ({$mosharekatnewrec} جدید)
                </a>
            {/if}
        {/if}    
    </div>
-->    
	<div class="col-sm-12 col-md-6 center">
	<div class="homebox green">
        <div class="homeboxhead">
            آمار بازدید
            <a href="{$URL}/index.php?option=adm_visit-chart">
                <div class="homeboxlink">
                    جزئیات
                </div>
            </a>
        </div>
        تعداد بازدید سایت در 24 ساعت گذشته: {$dayvisit}<br />
        تعداد بازدید سایت در 48 ساعت گذشته: {$yesdayvisit}<br />
        تعداد بازدید در کل: {$allvisit}<br /> 
        تعداد كاربران آنلاین: {$online}<br />
        <img src="images/admin/commentrec.gif" title="تماس با ما" alt="تماس با ما"  height="18px" style="vertical-align:middle;" />
        فرم تماس با ما:
        {if $directrelreckol eq 0}
        	دسترسی ندارید!
        {else}
        	{$directrelreckol}&nbsp;
            {if $directrelrec ne 0}
                <a href="{$URL}/index.php?option=adm_directrel-list" style="color:#D30003; text-decoration:none">
                    ({$directrelrec} جدید)
                </a>
            {/if}
        {/if}<br />    
    </div>
    </div>
</div>
<div class="row">
	<div class="col-sm-12 col-md-12">
    <div class="homebox orange">
        <div class="homeboxhead">
            پیغام سیستم
            <a href="#">
                <div class="homeboxlink">
                    آرشیو
                </div>
            </a>
        </div>
        اقدامات گسترده برنامه‌نویسی در حال انجام است. از شکیبایی شما سپاس گذاریم.<br>
		هر زمان صفحه به هم ریخته بود با دو بار رفرش کردن صفحه، آن را مرتب کنید.
    </div>
    </div>
</div>