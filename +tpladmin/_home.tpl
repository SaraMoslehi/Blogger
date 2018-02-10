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
<!--            <a style="cursor:url({$URL}/images/admin/magnify.cur), pointer;" href="{$URL}/images/admins/{$aid}" rel='thumbnail'>
                {if $apic eq 1}
                    <img src="images/admins/thumb_{$aid}" title="بزرگنمایی" alt="عكس كاربر" class="images" />
                {else}
                    <img src="images/admins/user-male" title="بزرگنمایی" alt="عكس كاربر"  class="images" />
                {/if}
            </a>
-->        </div>
        نام و نام خانوادگی: {$esmfamil}<br />
        نام کاربری: {$admin}<br />
        امنیت پسورد: {$PassLenght}<br />
        {if $URL eq "http://localhost/daneshpazir"}
        	<span style="color:black">(دسترسی لوكال)</span>
        {else}
        	<span style="color:yellow">(دسترسی آنلاین)</span>
        {/if}
    </div>
    </div>
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
        تعداد بازدید سایت در 24 ساعت گذشته: <br />
        تعداد بازدید سایت در 48 ساعت گذشته: <br />
        تعداد بازدید در کل: <br /> 
        تعداد كاربران آنلاین: <br />
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