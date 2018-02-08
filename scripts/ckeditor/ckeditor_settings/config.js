/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/


/*
CKEDITOR.editorConfig = function( config )
{
	// Define changes to default configuration here. For example:
	//خط زیر برای تغییر زبان سی کی ادیتور کافی است.
	// config.uiColor = '#AADC6E';
	//خط زیر برای اینه که در حالت پیشفرض ادیتور تگ پی میذاره دیگه نذاره.
	config.enterMode = 2;
};
*/


CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'MyToolbar';
	
	config.contentsCss = '+style/admin.css?v=1';
//the next lines add the new font to the combobox in CKEditor
	config.font_names ='ایران سنس/BISL;'+'ایران سنس بولد/BISM;'+'یکان/BYekan;'+'تیتر/BTitrBold;'+'کودک/b koodak;'+'Tahoma;' +
    'Times New Roman/Times New Roman, Times, serif;';
	
// The fonts in the font menu are configured using CKEDITOR.config.font_names
    CKEDITOR.config.font_names;
	config.language = 'fa';
	config.uiColor = '#AADC6E';
	config.toolbar_MyToolbar =
[

	{ name: 'document', items : [ 'Source', '-', 'Save', 'NewPage', 'Preview', 'Print', '-', 'Templates' ] },
	{ name: 'clipboard', items : [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
	{ name: 'editing', items : [ 'Find','Replace','-','SelectAll' ] },
	{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
	{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','CreateDiv']},
	{ name: 'justify', items :['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock','-','BidiLtr','BidiRtl' ] },
	{ name: 'links', items : [ 'Link','Unlink','Anchor' ] },
	{ name: 'insert', items : [ 'Image','Table','HorizontalRule','Smiley','SpecialChar'] },
	{ name: 'colors', items: [ 'TextColor', 'BGColor' ] },	
	{ name: 'styles', items : [ 'Styles','Format','Font','FontSize' ] },
	

];

};