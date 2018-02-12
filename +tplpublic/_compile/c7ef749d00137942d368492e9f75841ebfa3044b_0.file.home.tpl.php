<?php /* Smarty version 3.1.27, created on 2018-02-12 05:26:30
         compiled from "+tplpublic\home.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:15494711425a8117764b9122_89161623%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c7ef749d00137942d368492e9f75841ebfa3044b' => 
    array (
      0 => '+tplpublic\\home.tpl',
      1 => 1518409505,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15494711425a8117764b9122_89161623',
  'variables' => 
  array (
    'list' => 0,
    'fieldList' => 0,
    'key2' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
  'version' => '3.1.27',
  'unifunc' => 'content_5a81177651fe80_25050140',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_5a81177651fe80_25050140')) {
function content_5a81177651fe80_25050140 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '15494711425a8117764b9122_89161623';
?>
<div class="container">
    <div class="row" style="text-align:center" >
			<h1>BMS Blogger</h1>
	</div>
</div>
<table>
	<?php
$_from = $_smarty_tpl->tpl_vars['list']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['item'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['item']->_loop = false;
$_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['__foreach_i'] = new Smarty_Variable(array('iteration' => 0));
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
$_smarty_tpl->tpl_vars['__foreach_i']->value['iteration']++;
$foreach_item_Sav = $_smarty_tpl->tpl_vars['item'];
?>
	<tr >
		
        	
		<td style="text-align:center"><?php echo (isset($_smarty_tpl->tpl_vars['__foreach_i']->value['iteration']) ? $_smarty_tpl->tpl_vars['__foreach_i']->value['iteration'] : null);?>
</td>	
            <?php
$_from = $_smarty_tpl->tpl_vars['fieldList']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$_smarty_tpl->tpl_vars['item2'] = new Smarty_Variable;
$_smarty_tpl->tpl_vars['item2']->_loop = false;
$_smarty_tpl->tpl_vars['key2'] = new Smarty_Variable;
foreach ($_from as $_smarty_tpl->tpl_vars['key2']->value => $_smarty_tpl->tpl_vars['item2']->value) {
$_smarty_tpl->tpl_vars['item2']->_loop = true;
$foreach_item2_Sav = $_smarty_tpl->tpl_vars['item2'];
?>
					<td><?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value[$_smarty_tpl->tpl_vars['key2']->value])===null||$tmp==='' ? '&nbsp;' : $tmp);?>
</td>
			<?php
$_smarty_tpl->tpl_vars['item2'] = $foreach_item2_Sav;
}
?>
	</tr>
	<?php
$_smarty_tpl->tpl_vars['item'] = $foreach_item_Sav;
}
?>
</table><?php }
}
?>