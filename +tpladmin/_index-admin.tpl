<!doctype html>
<html>
<head>
    {include file="_head.tpl"}
</head>
<body class="main">
{if $tplModule ne '_login.tpl'}
<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="{$URL}">
        <span>
            <img src="{$URL}/images/admin/adminpanlogo.jpg" alt="LOGO" width="100px" />
            سامانه مدیریت BMS Blogger
        </span>
        </a>
    </div>
    <!-- Top Menu Items -->
    <ul class="nav navbar-left top-nav">
<!--            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
            </a>
        </li>            
-->            <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$esmfamil} <b class="fa fa-angle-down"></b></a>
            <ul class="dropdown-menu">
                <li><a href="{$URL}/index.php?option=adm_adminpersonaledit"><i class="fa fa-fw fa-user"></i> ویرایش</a></li>
                <li><a href="#"><i class="fa fa-fw fa-cog"></i> تغییر پسورد</a></li>
                <li class="divider"></li>
                <li><a href="index.php?option=adm_login&logout=1"><i class="fa fa-fw fa-power-off"></i> خروج</a></li>
            </ul>
        </li>
    </ul>
    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li>
                <a href="index.php?option=adm_home"><i class="fa fa-fw fa-home fa-lg"></i>  خانه</a>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-folder-open"></i> گروه‌بندی مطالب <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-1" class="collapse">
                    <li><a href="index.php?option=adm_news-group-list">لیست گروه‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_news-group-admin">گروه جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-book"></i>  مطالب <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-2" class="collapse">
                    <li><a href="index.php?option=adm_news-list">لیست مطالب <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_news-admin">مطلب جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-bars"></i>  منو‌ها <i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-3" class="collapse">
                    <li><a href="index.php?option=adm_treemenu-admin&id=1">منوی بالای سایت <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-4"><i class="fa fa-fw fa-television"></i>  اسلاید‌ها<i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-4" class="collapse">
                    <li><a href="index.php?option=adm_profslide-list">لیست اسلاید‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_profslide-admin">اسلاید جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-5"><i class="fa fa-fw fa-link"></i>  پیوند‌ها<i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-5" class="collapse">
                    <li><a href="index.php?option=adm_linkimage-list">لیست پیوند‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_linkimage-admin">پیوند جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-6"><i class="fa fa-fw fa-picture-o"></i>  گالری تصاویر<i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-6" class="collapse">
                    <li><a href="index.php?option=adm_gallery-list">لیست گالری‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_gallerydel-list">گالری‌های حذف شده <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_gallery-admin">گالری جدید <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_galleryphoto-list">لیست تصاویر <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_galleryphoto-admin">تصویر جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-7"><i class="fa fa-fw fa-film "></i>  ویدئو‌ها<i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-7" class="collapse">
                    <li><a href="index.php?option=adm_video-list">لیست ویدئو‌ها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_video-admin">ویدئوی جدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-8"><i class="fa fa-fw fa-phone"></i>  فرم‌های تماس با ما<i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-8" class="collapse">
                    <li><a href="index.php?option=adm_directrel-list">لیست فرم‌ها <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>
            <li>
                <a href="#" data-toggle="collapse" data-target="#submenu-9"><i class="fa fa-fw fa-line-chart"></i>  آمار بازدید<i class="fa fa-fw fa-angle-down"></i></a>
                <ul id="submenu-9" class="collapse">
                    <li><a href="index.php?option=adm_visit-list">لیست بازدیدها <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_visitsum-list">آمار ساعتی بازدید <i class="fa fa-angle-double-left"></i></a></li>
                    <li><a href="index.php?option=adm_visit-chart">نمودار بازدید <i class="fa fa-angle-double-left"></i></a></li>
                </ul>
            </li>

            <li>
                <a href="index.php?option=adm_inisetting-admin"><i class="fa fa-fw fa-server"></i>  تنظیمات اولیه</a>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>

<div id="wrapper">
    <!-- Navigation -->

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
	                <h1 style="text-align:center">{$title}</h1>
                    {if $URL eq "http://localhost/avvalmoshaver"}دسترسی لوكال {/if}
                    {include file=$tplModule}
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
<script>
$(function(){
    $('[data-toggle="tooltip"]').tooltip();
    $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-left").addClass("fa-angle-down");
    });
    $('.side-nav .collapse').on("show.bs.collapse", function() {                        
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-left");        
    });
})    
</script>    

{else}
	{include file=$tplModule}
{/if}
</body>
</html>
