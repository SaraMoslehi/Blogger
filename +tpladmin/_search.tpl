<div id="search-box" style="display:{if isset($smarty.get.search)}inline{else}none{/if}">
    <form method="post" action="index.php?option=adm_makesearch">
        <input type="hidden" name="searchOption" value="{$section}_{$module}">
        <input type="hidden" name="search" value="1">
        <table class='tbl'>
<!--------------------------------------------------------------------لیست ماژول‌ها-->
            {if $module eq 'module-list'}
                <tr>
                	<td>
                    	نام ماژول: 	
                        <input type="text" name="frm_adminSearch[xmodulename_like]" value="{$searchDefault.xmodulename_like}">
                    </td>
                    <td>
                    	شناسه ماژول:	
                    	<input type="text" name="frm_adminSearch[xmoduleheading_like]" value="{$searchDefault.xmoduleheading_like}">
                    </td>
                    <td>
                    	شناسه تیبل در دیتابیس:
                    	<input type="text" name="frm_adminSearch[xmoduletablename_like]" value="{$searchDefault.xmoduletablename_like}">
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست متولدین-->
            {if $module eq 'birthday-list'}
                <tr>
                	<td>                      
                    	تاریخ تولد:
                        <input type="text" name="frm_adminSearch[xbirthdate_date]" id="frm_date" value="{$searchDefault.xbirthdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------فرم اعزام-->
            {if ($module eq 'userezam-list')}
                <tr>
                	<td>
                        شماره فرم:
                        <input type="text" name="frm_adminSearch[xuserezamid_eq]" value="{$searchDefault.xuserezamid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xuserezamname_like]" value="{$searchDefault.xuserezamname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xuserezamfamily_like]" value="{$searchDefault.xuserezamfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	همراه:
                        <input type="text" name="frm_adminSearch[xuserezammobile_like]" value="{$searchDefault.xuserezammobile_like}">
                    </td>
                </tr>
                {/if}
 <!-----------------------------------------------------لیست شماره های همراه من-->
            {if ($module eq 'usermobilemy-list')}
            	<tr>
                    <td> عنوان کمپین
                                        <select id="frm_adminSearch[xxusermobile.xusermobilecampaignid_eq]" class="searchtext" name="frm_adminSearch[xxusermobile.xusermobilecampaignid_eq]">
                            <option value="0" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$campaigns key=key item=item}
                                <option value="{$item.xcampaignid}">{$item.xcampaignname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
	                    وضعیت
                    	<select id="frm_adminSearch[xxusermobile.xusermobilestatuse_eq]" class="searchtext" name="frm_adminSearch[xxusermobile.xusermobilestatuse_eq]">
                            <option value="0" selected="selected">
                                انتخاب کنید...
                            </option>
                     	    <option value="firstreg" >ثبت اولیه</option>
              				<option value="inprogress" >در دست پیگیری</option>
                			<option value="consult" >مشاوره</option>
               				<option value="negend" >پایان پیگیری-انصراف</option>
            			    <option value="posend" >پایان پیگیری-ثبت نام</option>
                        </select>
                    </td>
                </tr>
            	<tr>
                    <td>
                    	نام
                    	<input type="text" name="frm_adminSearch[xusermobilename_like]" value="{$searchDefault.xusermobilename_like}">
                    </td>
                    <td>
	                    نام خانوادگی
                    	<input type="text" name="frm_adminSearch[xusermobilefamily_like]" value="{$searchDefault.xusermobilefamily_like}">
                    </td>
                </tr>
            {/if}
 <!-----------------------------------------------------لیست شماره های همراه-->
            {if ($module eq 'usermobile-list')}
            	<tr>
                    <td> عنوان کمپین
                    <select id="frm_adminSearch[xxusermobile.xusermobilecampaignid_eq]" class="searchtext" name="frm_adminSearch[xxusermobile.xusermobilecampaignid_eq]">
                            <option value="0" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$campaigns key=key item=item}
                                <option value="{$item.xcampaignid}">{$item.xcampaignname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                    	مسئول ثبت 
                        <select id="frm_adminSearch[xxusermobile.xusermobileadminid_eq]" class="searchtext" name="frm_adminSearch[xxusermobile.xusermobileadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                     </td>
                     <td>
	                    وضعیت
                    	<select id="frm_adminSearch[xxusermobile.xusermobilestatuse_eq]" class="searchtext" name="frm_adminSearch[xxusermobile.xusermobilestatuse_eq]">
                            <option value="0" selected="selected">
                                انتخاب کنید...
                            </option>
                       		<option value="firstreg" >ثبت اولیه</option>
               				<option value="inprogress" >در دست پیگیری</option>
            			    <option value="consult" >مشاوره</option>
           				    <option value="negend" >پایان پیگیری-انصراف</option>
              			    <option value="posend" >پایان پیگیری-ثبت نام</option>
                        </select>
                    </td>
                </tr>
             	<tr>
                    <td>
                    	نام
                    	<input type="text" name="frm_adminSearch[xusermobilename_like]" value="{$searchDefault.xusermobilename_like}">
                    </td>
                    <td>
	                    نام خانوادگی
                    	<input type="text" name="frm_adminSearch[xusermobilefamily_like]" value="{$searchDefault.xusermobilefamily_like}">
                    </td>

                </tr>
           {/if}
<!--------------------------------------------------------------------لیست اساتید-->
            {if $module eq 'teacher-list'}
                <tr>
                    <td>
                    	نام:	
                    	<input type="text" name="frm_adminSearch[xname_like]" >
                    </td>
                    <td>
                    	نام خانوادگی:
                    	<input type="text" name="frm_adminSearch[xfamily_like]">
                    </td>
                	<td>
                    	رشته تحصیلی: 	
                        <input type="text" name="frm_adminSearch[xteachermajor_like]" >
                    </td>
                </tr>
                <tr>
                    <td>
                    	علاقمند به تدریس:
                    	<input type="text" name="frm_adminSearch[xteacherlesson_like]" >
                    </td>
                	<td>
                    	تجربه تدریس: 	
                        <input type="text" name="frm_adminSearch[xexperience_like]">
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست متقاضیان همکاری-->
            {if $module eq 'hamkar-list'}
                <tr>
                    <td>
                    	نام:	
                    	<input type="text" name="frm_adminSearch[xhamkarname_like]">
                    </td>
                    <td>
                    	نام خانوادگی:
                    	<input type="text" name="frm_adminSearch[xhamkarfamily_like]">
                    </td>
                	<td>
                    	رشته تحصیلی: 	
                        <input type="text" name="frm_adminSearch[xhamkarmajor_like]">
                    </td>
                	<td>
                    	دانشگاه: 	
                        <input type="text" name="frm_adminSearch[xhamkaruniversity_like]">
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست محققین-->
            {if $module eq 'researcher-list'}
                <tr>
                    <td>
                    	نام:	
                    	<input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xstudentname_like}">
                    </td>
                    <td>
                    	نام خانوادگی:
                    	<input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xstudentfamily_like}">
                    </td>
                    <td>
	                    وضعیت همکاری
                    	<select id="frm_adminSearch[xresearcheracptd_eq]" class="searchtext" name="frm_adminSearch[xresearcheracptd_eq]">
                            <option value="10" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                     	    <option value="0" >بررسی نشده</option>
              				<option value="1" >تایید شده</option>
              				<option value="2" >تایید نشده</option>
                        </select>
                    </td>
                 </tr>
                 <tr>
                	<td>
                    	ایمیل: 	
                        <input type="text" name="frm_adminSearch[xemail_like]" value="{$searchDefault.xemail_like}">
                    </td>
                    <td>
                        گروه محققین:
                        <select id="frm_adminSearch[xxresearcher.xgroup_eq]" class="searchtext" name="frm_adminSearch[xxresearcher.xgroup_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$resgroups key=key item=item}
                                <option value="{$item.xresgroupid}">{$item.xrgname}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>

               </tr>
               <tr>
                    <td>
                        رشته کارشناسی:
                        <select id="frm_adminSearch[xxresearcher.xlismajor_eq]" class="searchtext" name="frm_adminSearch[xxresearcher.xlismajor_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$lismajorl key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        دانشگاه کارشناسی:
                        <select id="frm_adminSearch[xxresearcher.xlisuniv_eq]" class="searchtext" name="frm_adminSearch[xxresearcher.xlisuniv_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$universities key=key item=item}
                                <option value="{$item.xuniversityid}">{$item.xuniname}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
              </tr>
              <tr>
                    <td>
                        رشته ارشد:
                        <select id="frm_adminSearch[xxresearcher.xfoghmajor_eq]" class="searchtext" name="frm_adminSearch[xxresearcher.xfoghmajor_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$foghmajorl key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        دانشگاه ارشد:
                        <select id="frm_adminSearch[xxresearcher.xfoghuniv_eq]" class="searchtext" name="frm_adminSearch[xxresearcher.xfoghuniv_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$universities key=key item=item}
                                <option value="{$item.xuniversityid}">{$item.xuniname}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>

               </tr>
               <tr>
                    <td>
                    	سوابق:	
                    	<input type="text" name="frm_adminSearch[xsavabegh_like]" value="{$searchDefault.xsavabegh_like}">
                    </td>
                    <td>
                    	مقالات:
                    	<input type="text" name="frm_adminSearch[xmaghalat_like]" value="{$searchDefault.xmaghalat_like}">
                    </td>
               </tr>

            {/if}
<!--------------------------------------------------------------------لیست پروژه های کاربران-->
            {if ($module eq 'userprojects-list')||($module eq 'userprojectssabt-list')||($module eq 'userprojectsejra-list')||($module eq 'userprojectsmakh-list')||($module eq 'userprojectsdeleted-list')||($module eq 'parvandetez-kol-list')||($module eq 'parvandetez-ejra-list')||($module eq 'parvandetez-sabt-list')|| ($module eq 'parvandetez-makh-list')}
                <tr>
                    <td>
                    	نام:	
                    	<input type="text" name="frm_adminSearch[xuserprojectname_like]" value="{$searchDefault.xuserprojectname_like}">
                    </td>
                    <td>
                    	نام خانوادگی:
                    	<input type="text" name="frm_adminSearch[xuserprojectfamily_like]" value="{$searchDefault.xuserprojectfamily_like}">
                    </td>
                	<td>
                    	ایمیل: 	
                        <input type="text" name="frm_adminSearch[xuserprojectemail_like]" value="{$searchDefault.xuserprojectemail_like}">
                    </td>
                 </tr>
                 <tr>
                    <td>
                        نوع پروژه:
                        <select id="frm_adminSearch[xxuserproject.xuserprojecttypeid_eq]" class="searchtext" name="frm_adminSearch[xxuserproject.xuserprojecttypeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$projecttypekol key=key item=item}
                                <option value="{$item.xprojecttypeid}">{$item.xprojecttype}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    <td>
                        وضعیت پروژه:
                        <select id="frm_adminSearch[xxuserproject.xuserprojectstatid_eq]" class="searchtext" name="frm_adminSearch[xxuserproject.xuserprojectstatid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$projectstatkol key=key item=item}
                                <option value="{$item.xprojectstatid}">{$item.xprojectstat}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        نحوه آشنایی:
                        <select id="frm_adminSearch[xxuserproject.xuserprojectashnayiid_eq]" class="searchtext" name="frm_adminSearch[xxuserproject.xuserprojectashnayiid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$ashnayikol key=key item=item}
                                <option value="{$item.xashnayiid}">{$item.xashnayi}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
               </tr>
            {/if}
<!--------------------------------------------------------------------لیست بررسی و نظرات-->
            {if $module eq 'review-list'}
                <tr>
                    <td>
                        انتخاب گروه:
                        <select id="frm_adminSearch[xreviewgroupid_eq]" class="searchtext" name="frm_adminSearch[xreviewgroupid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$reviewgroups key=key item=item}
                                <option value="{$item.xreviewgroupid}">{$item.xreviewgroupname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب بررسی کننده:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                    	شماره ارجاع:
                    	<input type="text" name="frm_adminSearch[xreviewref_eq]" value="{$searchDefault.xreviewref_eq}">
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست مرخصی ها-->
			{if $module eq 'morkhasi-list'}
			<tr>
                <td>شماره درخواست :
                        <input type="text" name="frm_adminSearch[xmorkhasiid_eq]" value="{$searchDefault.xmorkhasi_eq}">
                    </td>
            </tr>
            {/if}
<!--------------------------------------------------------------------لیست کالا-->
            {if $module eq 'kalaattributes-list'}
                <tr>
                    <td>
                        انتخاب گروه کالا:
                        <select id="frm_adminSearch[xxkalaattributes.xkalagroupsid_eq]" class="searchtext" name="frm_adminSearch[xkalagroupsid_eq]" onchange="setSub('frm_adminSearch[xxkalaattributes.xkalagroupsid_eq]', 'frm_adminSearch[xxkalaattributes.xkalatypeid_eq]', optKala, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$kalagroups key=key item=item}
                                <option value="{$item.xkalagroupsid}">{$item.xkalagroupsname}</option>
                            {/foreach}
                        </select>
                        
                        انتخاب نوع کالا:
                        <select id="frm_adminSearch[xxkalaattributes.xkalatypeid_eq]" class="searchtext" name="frm_adminSearch[xxkalaattributes.xkalatypeid_eq]">
                            <option value="0" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$kalatype key=key item=item}
                                <option value="{$item.xkalatypeid}">{$item.xkalatypename}</option>
                            {/foreach}
                        </select>
                    </td>
            {/if}
<!--------------------------------------------------------------------لیست سخن روز-->
            {if $module eq 'speech-list'}
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxdepartment.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxdepartment.xdepartmentid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
	                    فعال
                    	<select id="frm_adminSearch[xspeechactive_eq]" class="searchtext" name="frm_adminSearch[xspeechactive_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                     	    <option value="1" >بله</option>
              				<option value="0" >خیر</option>
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست اسلاید‌های پیشرفته-->
            {if $module eq 'profslide-list'}
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xdepartmentid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
	                    نمایش
                    	<select id="frm_adminSearch[xslideview_eq]" class="searchtext" name="frm_adminSearch[xslideview_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                     	    <option value="1" >بله</option>
              				<option value="0" >خیر</option>
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست پروژه‌ها-->
            {if $module eq 'project-list'}
                <tr>
                    <td>
	                    وضعیت
                    	<select id="frm_adminSearch[xprojectstatus_eq]" class="searchtext" name="frm_adminSearch[xprojectstatus_eq]">
                            <option value="0" selected="selected">
                                انتخاب کنید...
                            </option>
                     	    <option value="tarif" >تازه تعریف</option>
              				<option value="ejra" >در حال اجرا</option>
              				<option value="payan" >اجرا شد</option>
              				<option value="cancel" >کنسل شده</option>
              				<option value="routine" >روتین</option>
              				<option value="suspended" >معلق</option>
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست همه گزارش کارها-->
            {if $module eq 'allworksheet-list'}
                <tr>
                	<td>
                    	تاریخ گزارش کار:
                        <input type="text" name="frm_adminSearch[xworksheetdate_date]" id="frm_date" value="{$searchDefault.xworksheetdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xadminname_like]" value="{$searchDefault.xadminname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xadminfamily_like]" value="{$searchDefault.xadminfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب همکار:
                        <select id="frm_adminSearch[xxworksheet.xadminid_eq]" class="searchtext" name="frm_adminSearch[xxworksheet.xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xdepartmentid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست گزارش کارهای من-->
            {if $module eq 'worksheet-list'}
                <tr>
                	<td>
                    	تاریخ گزارش کار:
                        <input type="text" name="frm_adminSearch[xworksheetdate_date]" id="frm_date" value="{$searchDefault.xworksheetdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست دروس/لول‌ها-->
            {if $module eq 'lesson-list'}
                <tr>
                	<td>
                    	عنوان درس یا لول:
                        <input type="text" name="frm_adminSearch[xxlesson.xlesson_like]" value="{$searchDefault.xxlesson.xlesson_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست زبان‌آموزان-->
            {if ($module eq 'zabansabt-list')}
                <tr>
                	<td>
                    	شماره زبان‌آموز:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" value="{$searchDefault.xuserid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                	<td>
                    	تاریخ دقیق ثبت:
                        <input type="text" name="frm_adminSearch[xregdate_date]" id="frm_date" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	از تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_datefrom]" id="frm_date1" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تا تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_dateto]" id="frm_date2" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxrequest.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxrequest.xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xxrequest.xdepartmentid_eq]', 'frm_adminSearch[xxuser.xrequestid_eq]', optRequest, 1, null);">
                            <option value="0" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب زبان:
                        <select id="frm_adminSearch[xxuser.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxuser.xrequestid_eq]', 'frm_adminSearch[xxuser.xmajorid_eq]', optMajor, 1, null);">
                            <option value="0" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب سیستم آموزشی:
                        <select id="frm_adminSearch[xxuser.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xmajorid_eq]">
                            <option value="0" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب شعبه ثبت نام:
                        <select id="frm_adminSearch[xxuser.xshobeid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xshobeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$shobes key=key item=item}
                                <option value="{$item.xshobeid}">{$item.xshobeinname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مسئول ثبت:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست حقوقی ها-->
            {if ($module eq 'lawsabt-list')}
                <tr>
                	<td>
                    	شماره دانشپذیری:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                	<td>
                    	تاریخ دقیق ثبت:
                        <input type="text" name="frm_adminSearch[xregdate_date]" id="frm_date" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	از تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_datefrom]" id="frm_date1">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تا تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_dateto]" id="frm_date2" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب شعبه ثبت نام:
                        <select id="frm_adminSearch[xxuser.xshobeid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xshobeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$shobes key=key item=item}
                                <option value="{$item.xshobeid}">{$item.xshobeinname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مسئول ثبت:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست ثبت نام‌ها و انتخاب واحدها-->
            {if ($module eq 'sabtenam-list')||($module eq 'enva-kollist')||($module eq 'sabteterm-list')|| {$module eq 'sabttermbala-list'}||{$module eq 'sabttermbala-termlist'} || {$module eq 'sabttermbala-ltermlist'} ||{$module eq 'mokatebeyi-list'} || {$module eq 'mokatebeyi-termlist'}|| {$module eq 'parvandemokatebe-kol-list'} || {$module eq 'parvandemokatebe-term-list'} }
            {if $admindepartment eq 2}
                <tr>
                	<td>
                    	شماره زبان‌آموز:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" value="{$searchDefault.xuserid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td colspan="2">
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                	<td>
                    	تاریخ دقیق ثبت:
                        <input type="text" name="frm_adminSearch[xxuser.xregdate_date]" id="frm_date" value="{$searchDefault.xxuser.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	از تاریخ:
                        <input type="text" name="frm_adminSearch[xxuser.xregdate_datefrom]" id="frm_date1" value="{$searchDefault.xxuser.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td colspan="2">
                    	تا تاریخ:
                        <input type="text" name="frm_adminSearch[xxuser.xregdate_dateto]" id="frm_date2" value="{$searchDefault.xxuser.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب زبان:
                        <select id="frm_adminSearch[xxuser.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxuser.xrequestid_eq]', 'frm_adminSearch[xxuser.xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب سیستم آموزشی:
                        <select id="frm_adminSearch[xxuser.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xmajorid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب شعبه ثبت نام:
                        <select id="frm_adminSearch[xxuser.xshobeid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xshobeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$shobes key=key item=item}
                                <option value="{$item.xshobeid}">{$item.xshobeinname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مسئول ثبت:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
			{else}
                <tr>
                	<td>
                    	شماره دانشپذیری:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" value="{$searchDefault.xuserid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                	<td>
                    	تاریخ دقیق ثبت:
                        <input type="text" name="frm_adminSearch[xregdate_date]" id="frm_date" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	از تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_datefrom]" id="frm_date1" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تا تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_dateto]" id="frm_date2" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب مقطع:
                        <select id="frm_adminSearch[xxuser.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxuser.xrequestid_eq]', 'frm_adminSearch[xxuser.xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب رشته:
                        <select id="frm_adminSearch[xxuser.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xmajorid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب شعبه ثبت نام:
                        <select id="frm_adminSearch[xxuser.xshobeid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xshobeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$shobes key=key item=item}
                                <option value="{$item.xshobeid}">{$item.xshobeinname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مسئول ثبت:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        دانشپذیران مکاتبه ای:
                        <select id="frm_adminSearch[xxuser.xmokatebeyi_eq]" class="searchtext" name="frm_adminSearch[xxuser.xmokatebeyi_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            <option value="yes">بلی</option>
                            <option value="no">خیر</option>
                        </select>
                    </td>
                </tr>
            {/if}
            {/if}
<!--------------------------------------------------------------------لیست قبولی‌ها-->
            {if $module eq 'ghabooli-list'}
                <tr>
                	<td>
                    	شماره دانشپذیری:
                        <input type="text" name="frm_adminSearch[xghabooliid_eq]" value="{$searchDefault.xghabooliid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xghabooliname_like]" value="{$searchDefault.xghabooliname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xghaboolifamily_like]" value="{$searchDefault.xghaboolifamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxghabooli.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxghabooli.xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xxghabooli.xdepartmentid_eq]', 'frm_adminSearch[xxghabooli.xrequestid_eq]', optRequest, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مقطع:
                        <select id="frm_adminSearch[xxghabooli.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxghabooli.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxghabooli.xrequestid_eq]', 'frm_adminSearch[xxghabooli.xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب رشته:
                        <select id="frm_adminSearch[xxghabooli.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxghabooli.xmajorid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        انتخاب ترم آزمون:
                        <select id="frm_adminSearch[xxghabooli.xtermid_eq]" class="searchtext" name="frm_adminSearch[xxghabooli.xtermid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$terms key=key item=item}
                                <option value="{$item.xtermid}">{$item.xterm}- دپارتمان {$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
            {/if}
            
<!--------------------------------------------------------------------لیست کاربران سایت-->
            {if $module eq 'daneshpazir-list'}
                <tr>
                	<td>
                    	شماره دانشپذیری:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" value="{$searchDefault.xuserid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    	ایمیل:
                        <input type="text" name="frm_adminSearch[xemail_like]" value="{$searchDefault.xemail_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست پرونده‌‌ها-->
            {if ($module eq 'parvande-kol-list')||($module eq 'parvande-term-list')||($module eq 'parvande-lterm-list')}
            {if $admindepartment eq 2}
                <tr>
                	<td>
                        شماره زبان‌آموز:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" value="{$searchDefault.xuserid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                	<td>
                    	تاریخ دقیق ثبت:
                        <input type="text" name="frm_adminSearch[xregdate_date]" id="frm_date" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	از تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_datefrom]" id="frm_date1" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تا تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_dateto]" id="frm_date2" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxrequest.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxrequest.xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xxrequest.xdepartmentid_eq]', 'frm_adminSearch[xxuser.xrequestid_eq]', optRequest, 1, null);">
                            <option value="0" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب زبان:
                        <select id="frm_adminSearch[xxuser.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxuser.xrequestid_eq]', 'frm_adminSearch[xxuser.xmajorid_eq]', optMajor, 1, null);">
                            <option value="0" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب سیستم آموزشی:
                        <select id="frm_adminSearch[xxuser.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xmajorid_eq]">
                            <option value="0" selected="selected" disabled>
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب شعبه ثبت نام:
                        <select id="frm_adminSearch[xxuser.xshobeid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xshobeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$shobes key=key item=item}
                                <option value="{$item.xshobeid}">{$item.xshobeinname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مسئول ثبت:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
            {else}
                <tr>
                	<td>
                        شماره دانشپذیری:
                        <input type="text" name="frm_adminSearch[xuserid_eq]" value="{$searchDefault.xuserid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام:
                        <input type="text" name="frm_adminSearch[xname_like]" value="{$searchDefault.xname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی:
                        <input type="text" name="frm_adminSearch[xfamily_like]" value="{$searchDefault.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                	<td>
                    	تاریخ دقیق ثبت:
                        <input type="text" name="frm_adminSearch[xregdate_date]" id="frm_date" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	از تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_datefrom]" id="frm_date1" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تا تاریخ:
                        <input type="text" name="frm_adminSearch[xregdate_dateto]" id="frm_date2" value="{$searchDefault.xregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxrequest.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxrequest.xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xxrequest.xdepartmentid_eq]', 'frm_adminSearch[xxuser.xrequestid_eq]', optRequest, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مقطع:
                        <select id="frm_adminSearch[xxuser.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxuser.xrequestid_eq]', 'frm_adminSearch[xxuser.xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب رشته:
                        <select id="frm_adminSearch[xxuser.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xmajorid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب شعبه ثبت نام:
                        <select id="frm_adminSearch[xxuser.xshobeid_eq]" class="searchtext" name="frm_adminSearch[xxuser.xshobeid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$shobes key=key item=item}
                                <option value="{$item.xshobeid}">{$item.xshobeinname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مسئول ثبت:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        کارت دانشپذیری:
                        <select id="frm_adminSearch[xmadkada_eq]" class="searchtext" name="frm_adminSearch[xmadkada_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            <option value="no">نگرفته</option>
                            <option value="yes">گرفته</option>
                        </select>
                    </td>
                </tr>
            {/if}
            {/if}
<!--------------------------------------------------------------------لیست کلاس‌ها-->
            {if ($module eq 'class-list')}
            {if $admindepartment eq 2}
	            <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxrequest.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxrequest.xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xxrequest.xdepartmentid_eq]', 'frm_adminSearch[xxmajor.xrequestid_eq]', optRequest, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب زبان:
                        <select id="frm_adminSearch[xxmajor.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxmajor.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxmajor.xrequestid_eq]', 'frm_adminSearch[xxrelmajles.xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب سیستم آموزشی:
                        <select id="frm_adminSearch[xxrelmajles.xmajorid_eq]" class="searchtext" name="frm_adminSearch[xxrelmajles.xmajorid_eq]" onchange="setSub('frm_adminSearch[xxrelmajles.xmajorid_eq]', 'frm_adminSearch[xxrelmajles.xlessonid_eq]', optLesson, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب لِول:
                        <select id="frm_adminSearch[xxrelmajles.xlessonid_eq]" class="searchtext" name="frm_adminSearch[xxrelmajles.xlessonid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$lessons key=key item=item}
                                <option value="{$item.xlessonid}">{$item.xlessonid}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    	کد کلاس:
                        <input type="text" name="frm_adminSearch[xclasscode_eq]" value="{$searchDefault.xclasscode_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب روم:
                        <select id="frm_adminSearch[xxclass.xclassplaceid_eq]" class="searchtext" name="frm_adminSearch[xxclass.xclassplaceid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$rooms key=key item=item}
                                <option value="{$item.xclassplaceid}">{$item.xclassplace}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	روز‌های تشکیل:
                        <input type="text" name="frm_adminSearch[xclasstime_like]" value="{$searchDefault.xclasstime_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب استاد:
                        <select id="frm_adminSearch[xteacherid_eq]" class="searchtext" name="frm_adminSearch[xteacherid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$teachers key=key item=item}
                                <option value="{$item.xuserid}">{$item.xfamily}، {$item.xname}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        وضعیت:
                        <select id="frm_adminSearch[xxclass.xactive_eq]" class="searchtext" name="frm_adminSearch[xxclass.xactive_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            <option value="1">فعال</option>
                            <option value="2">غیر فعال</option>
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {else}
	            <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xdepartmentid_eq]', 'frm_adminSearch[xxmajor.xrequestid_eq]', optRequest, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مقطع:
                        <select id="frm_adminSearch[xxmajor.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxmajor.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxmajor.xrequestid_eq]', 'frm_adminSearch[xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب رشته:
                        <select id="frm_adminSearch[xmajorid_eq]" class="searchtext" name="frm_adminSearch[xmajorid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    	کد کلاس:
                        <input type="text" name="frm_adminSearch[xclasscode_eq]" value="{$searchDefault.xclasscode_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	روز کلاس:
                        <select id="frm_adminSearch[xclassday_eq]" class="searchtext" name="frm_adminSearch[xclassday_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            <option value="شنبه">شنبه</option>
                            <option value="یكشنبه">یكشنبه</option>
                            <option value="دوشنبه">دوشنبه</option>
                            <option value="سه‌شنبه">سه‌شنبه</option>
                            <option value="چهارشنبه">چهارشنبه</option>
                            <option value="پنج‌شنبه">پنج‌شنبه</option>
                            <option value="جمعه">جمعه</option>
                         </select>
                       &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب استاد:
                        <select id="frm_adminSearch[xteacherid_eq]" class="searchtext" name="frm_adminSearch[xteacherid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$teachers key=key item=item}
                                <option value="{$item.xuserid}">{$item.xfamily}، {$item.xname}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {/if}
            {/if}
<!--------------------------------------------------------------------لیست رشته‌ها-->
            {if ($module eq 'major-list')}
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xdepartmentid_eq]" onchange="setSub('frm_adminSearch[xdepartmentid_eq]', 'frm_adminSearch[xxmajor.xrequestid_eq]', optRequest, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب مقطع:
                        <select id="frm_adminSearch[xxmajor.xrequestid_eq]" class="searchtext" name="frm_adminSearch[xxmajor.xrequestid_eq]" onchange="setSub('frm_adminSearch[xxmajor.xrequestid_eq]', 'frm_adminSearch[xmajorid_eq]', optMajor, 1, null);">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$requests key=key item=item}
                                <option value="{$item.xrequestid}">{$item.xrequest}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        انتخاب رشته:
                        <select id="frm_adminSearch[xmajorid_eq]" class="searchtext" name="frm_adminSearch[xmajorid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$majors key=key item=item}
                                <option value="{$item.xmajorid}">{$item.xmajor}</option>
                            {/foreach}
                        </select>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    	بخشی از نام رشته:
                        <input type="text" name="frm_adminSearch[xmajor_like]" value="{$searchDefault.xmajor_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	بخشی از نام مصطلح رشته:
                        <input type="text" name="frm_adminSearch[xmajormosname_like]" value="{$searchDefault.xmajormosname_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------لیست مطالب-->
            {if $module eq 'news-list'}
                <tr>
                    <td>
                    	کد مطلب:
                        <input type="text" name="frm_adminSearch[xnewsid_eq]" value="{$searchDefault.xnewsid_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تاریخ ثبت:
                        <input type="text" name="frm_adminSearch[xdate_date]" id="frm_date" value="{$searchDefault.xdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	بخشی از عنوان:
                        <input type="text" name="frm_adminSearch[xnews_like]" value="{$searchDefault.xnews_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        انتخاب دپارتمان:
                        <select id="frm_adminSearch[xxdepartment.xdepartmentid_eq]" class="searchtext" name="frm_adminSearch[xxdepartment.xdepartmentid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$departments key=key item=item}
                                <option value="{$item.xdepartmentid}">{$item.xdepartment}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب ویرایش کننده:
                        <select id="frm_adminSearch[xadminid_eq]" class="searchtext" name="frm_adminSearch[xadminid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$admins key=key item=item}
                                <option value="{$item.xadminid}">{$item.xadminfamily}، {$item.xadminname}</option>
                            {/foreach}
                        </select>
                    </td>
                    <td>
                        انتخاب گروه مطالب:
                        <select id="frm_adminSearch[xnewsgroupid_eq]" class="searchtext" name="frm_adminSearch[xnewsgroupid_eq]">
                            <option value="" selected="selected">
                                انتخاب کنید...
                            </option>
                            {foreach from=$newsgroups key=key item=item}
                                <option value="{$item.xnewsgroupid}">{$item.xnewsgroup}</option>
                            {/foreach}
                        </select>
                    </td>
                </tr>
            {/if}
<!--------------------------------------------------------------------انواع لیست فیش-->
            {if ($module eq 'fish-list')||($module eq 'fishkol-list')}
                <tr>
                    <td>
                    	شماره فیش:
                        <input type="text" name="frm_adminSearch[xfishnumber_eq]" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تاریخ فیش:
                        <input type="text" name="frm_adminSearch[xfishdate_date]" id="frm_date" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تاریخ ثبت:
                        <input type="text" name="frm_adminSearch[xfishregdate_date]" id="frm_date1" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    	نام پرداخت کننده:
                        <input type="text" name="frm_adminSearch[xname_like]" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی پرداخت کننده:
                        <input type="text" name="frm_adminSearch[xfamily_like]" >
                        &nbsp;&nbsp;&nbsp;
                    </td>
				</tr>
            {/if}
<!--------------------------------------------------------------------انواع لیست چک-->
            {if ($module eq 'cheque-list')||($module eq 'cheque-term-list')||($module eq 'cheque-lterm-list')}
                <tr>
                    <td>
                    	شماره چک:
                        <input type="text" name="frm_adminSearch[xchequenumber_eq]" value="{$searchDefault.xchequenumber_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تاریخ سررسید:
                        <input type="text" name="frm_adminSearch[xchequedate_date]" id="frm_date" value="{$searchDefault.xchequedate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                	<td>
                    	تاریخ ثبت:
                        <input type="text" name="frm_adminSearch[xchequeregdate_date]" id="frm_date1" value="{$searchDefault.xchequeregdate_date}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                    	ثبت در فیش شماره:
                        <input type="text" name="frm_adminSearch[xfishnumber_eq]" value="{$searchDefault.xfishnumber_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	مبلغ چک:
                        <input type="text" name="frm_adminSearch[xchequefee_eq]" value="{$searchDefault.xchequefee_eq}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                    	نام خانوادگی پرداخت کننده:
                        <input type="text" name="frm_adminSearch[xxuser.xfamily_like]" value="{$searchDefault.xxuser.xfamily_like}">
                        &nbsp;&nbsp;&nbsp;
                    </td>
				</tr>
            {/if}
<!--------------------------------------------------------------------->
            <tr>
                <td>
                    <input type="submit" value="مشاهده نتیجه" class="btn">
                </td>
            </tr>
        </table>
    </form>
</div>
<script type="text/javascript" language="javascript" src="{$URL}/scripts/optRequest.js.php"></script>
<script type="text/javascript" language="javascript" src="{$URL}/scripts/optMajor.js.php"></script>
<script type="text/javascript" language="javascript" src="{$URL}/scripts/optLesson.js.php"></script>
<script>
$(document).ready(function(){
	$("#lang").change();
	$('#frm_date').datepicker({
		changeMonth: true,
		changeYear: true});
});
$(document).ready(function(){
	$("#lang").change();
	$('#frm_date1').datepicker({
		changeMonth: true,
		changeYear: true});
}); 
$(document).ready(function(){
	$("#lang").change();
	$('#frm_date2').datepicker({
		changeMonth: true,
		changeYear: true});
});
</script>