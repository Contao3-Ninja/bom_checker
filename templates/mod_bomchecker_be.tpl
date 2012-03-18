<style type="text/css">
/* <![CDATA[ */
#bomcheck1, #bomcheck2 {
	width:100%;
}
#bom_result {
	padding:0 18px 18px 18px;
}
#bom_result img {
	padding-right: 10px;
	vertical-align: text-bottom;
}
#bom_result #bomtitle {
	font-weight: bold;
}
/* ]]> */
</style>
<div id="tl_buttons">
	<a href="<?php echo $this->referer;?>" class="header_back" title="<?php echo $this->backTitle;?>" accesskey="b" onclick="Backend.getScrollOffset();"><?php echo $this->backTitle;?></a>
</div>

<h2 class="sub_headline"><?php echo $this->Title;?></h2>
<?php defined('REQUEST_TOKEN') or define('REQUEST_TOKEN', 'c0n740'); ?>
<div id="bomcheck1">
	<form action="<?php echo $this->action; ?>" id="bomcheck1form" class="tl_form" method="post">
		<div class="tl_formbody_edit">
			<input name="check_dirs" id="check_dirs" type="hidden" value="1" />
			<input type="hidden" name="REQUEST_TOKEN" value="<?php echo REQUEST_TOKEN; ?>">
			<div class="tl_tbox block">
	  			<h3><label for="ctrl_original"><?php echo $this->dirlabel; ?></label></h3>
	  			<div id="bom_dirs" class="tl_checkbox_container">
	  				<input type="checkbox" id="check_all" class="tl_checkbox" onclick="Backend.toggleCheckboxes(this, 'bomdirs')" /> <label for="check_all" style="color:#a6a6a6;"><em><?php echo $this->selectAll; ?></em></label><br />
				  <?php foreach ($this->DirectorySelection as $arrDirs): ?>
					<input type="checkbox" name="bomdirs[]" id="<?php echo $arrDirs['id']; ?>" class="tl_checkbox" value="<?php echo $arrDirs['value']; ?>" onfocus="Backend.getScrollOffset();" /> <label for="<?php echo $arrDirs['id']; ?>"><strong><?php echo $arrDirs['name']; ?></strong></label><br />
				  <?php endforeach; ?>
	  			</div>
			  <?php if ($this->dirHelp): ?>
				<p class="tl_help tl_tip"><?php echo $this->dirHelp; ?></p>
			  <?php endif; ?>
			  <br />
			  <input type="submit" name="check" id="check_dirs_submit" class="tl_submit" alt="check dirs" accesskey="d" value="<?php echo $this->dirSubmit; ?>" /> 
			</div>
		</div>
	</form>
</div>

<div id="bomcheck2">
	<form action="<?php echo $this->action; ?>" id="bomcheck2form" name="tl_select_module" class="tl_form" method="post">
	<div class="tl_formbody_edit">
		<div class="tl_tbox">
			<h3><label for="ctrl_original"><?php echo $this->modules; ?></label></h3>
			<select name="list_modules" id="ctrl_original" class="tl_select" onfocus="Backend.getScrollOffset();">
			<?php echo $this->ModuleSelection; ?>
			</select>
			<p class="tl_help tl_tip"><?php echo $this->modulesHelp; ?></p>
			<input name="check_module" id="check_module" type="hidden" value="1">
			<input type="hidden" name="REQUEST_TOKEN" value="<?php echo REQUEST_TOKEN; ?>">
			<br />
			<input type="submit" name="check" id="check_module_submit" class="tl_submit" alt="check module" accesskey="m" value="<?php echo $this->dirSubmit; ?>" /> 
		</div>
	</div>
	</form>
</div>

<?php if($this->check_bom == 1) : ?>
<hr /><div id="bom_result"><img src="system/themes/<?php echo $this->theme; ?>/images/important.gif" title="result" height="16" width="16" /><span id="bomtitle"><?php echo $GLOBALS['TL_LANG']['BomChecker']['result']; ?></span>
	<?php if(count($this->check_dir_found)) : ?>
<ul>
	<?php foreach ($this->check_dir_found as $bomfiles) : ?>
<li><?php echo $bomfiles; ?></li>
	<?php endforeach; ?>
</ul>
	<?php endif; ?>
	<?php if(count($this->check_module_found)) : ?>
<ul>
	<?php foreach ($this->check_module_found as $bomfiles) : ?>
<li><?php echo $bomfiles; ?></li>
	<?php endforeach; ?>
</ul>
	<?php endif; ?>
</div>
<?php endif; ?>
<?php if($this->check_bom == 2) : ?>
<hr /><div id="bom_result"><img src="system/themes/<?php echo $this->theme; ?>/images/help.gif" title="result" height="16" width="16" /><span id="bomtitle"><?php echo $GLOBALS['TL_LANG']['BomChecker']['result_ok']; ?></span></div>
<?php endif; ?>
<?php if($this->check_bom == 3) : ?>
<hr /><div id="bom_result"><img src="system/themes/<?php echo $this->theme; ?>/images/important.gif" title="result" height="16" width="16" /><span id="bomtitle"><?php echo $GLOBALS['TL_LANG']['BomChecker']['spl']; ?></span></div>
<?php endif; ?>