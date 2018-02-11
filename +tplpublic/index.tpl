<!DOCTYPE html>
<html lang="fa-IR" dir="rtl">
<head>
	{include file="_head1.tpl"}
</head>
<body>
<div class="container-fluid">
    <div class="row navbar1 equal">
        <div class="col-xs-6 col-sm-6 col-md-1 logopic">
		</div>
        <div class="col-xs-6 col-sm-6 col-md-9">
            <div class="row">
                <nav class="navbar navbar-default navbar1">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar" >
                        <ul class="nav navbar-nav" id="override1">
                            <li>
                                <a class="nav1" href="{URL}"><span class=""></span> خانه</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav" id="override1">
                            <li>
                                <a class="nav1" href="{URL}\signup\"><span class=""></span> ثبت نام</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav" id="override1">
                            <li>
                                <a class="nav1" href="{URL}\admin\"><span class=""></span> ورود</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
    	</div>
        <div class="hidden-xs hidden-sm col-md-2 col-lg-2">
            <div class="row">
                <form class="navbar-form search" role="search" method="post" action="/tag-list/" enctype="multipart/form-data">
                <div class="input-group">
                    <input type="text" class="form-control search" placeholder="جستجو..." name="action" >
                    <div class="input-group-btn">
                        <button class="btn btn-defaul search" type="submit">
                        	<i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
                </form>
        	</div>
		</div>
	</div>
</div>
{include file="$tplModule"}
<div class="container-fluid footerrowback" >
    <div class="container">
        <div class="row footerrow">
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                <h2>
                    برنامه نویسی و طراحی :::
                </h2>
            </div>
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
        </div>
        <div class="row footerrow">
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <h3>بهروز جان‌فدا</h3>
                شماره دانشجویی: 96242243
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <h3>مرجان پوست زاده</h3>
                شماره دانشجویی: 96242234
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <h3>سارا مصلحی</h3>
                شماره دانشجویی: 96242945
            </div>
            <div class="hidden-xs hidden-sm col-md-1 col-lg-1">
            </div>
        </div>
    </div>
</div>
</body>
{literal}
<script>
$(document).ready(function() {
    $('.navbar a.dropdown-toggle').on('click', function(e) {
        var $el = $(this);
        var $parent = $(this).offsetParent(".dropdown-menu");
        $(this).parent("li").toggleClass('open');

        if(!$parent.parent().hasClass('nav')) {
            $el.next().css({"top": $el[0].offsetTop, "left": $parent.outerWidth() - 4});
        }

        $('.nav li.open').not($(this).parents("li")).removeClass("open");

        return false;
    });
});</script>
{/literal}
</html>
