<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/home.css">
<div class="center_div">
	<?php if ($this->session->userdata('logged_in')) { ?>
		<br/><br/>
		<!-- <a class="blue_back" href="<?php echo base_url(); ?>index.php/create">
			<?php echo lang('home_create_ros'); ?>
		</a>
		<br/><br/><br/><br/> -->
		<a class="blue_back" href="<?php echo base_url(); ?>index.php/manage">
			<?php echo lang('home_ros_management'); ?>
		</a>
	<?php } else{ ?>
		<h2><?php echo lang('home_heading_login'); ?></h2>
		<form method="POST">
			<table class="center_table">
				<tr>
					<td><label for="username"><?php echo lang('home_label_username') ?></label></td>
					<td><input type="text" name="username" id="username" autofocus value="<?php echo urldecode($this->input->get('username')); ?>"></td>
				</tr>

				<tr>
					<td><label for="password"><?php echo lang('home_label_password') ?></label></td>
					<td><input type="password" name="password" id="password" autofocus></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td colspan=2>
						<input type="submit" value="<?php echo lang('home_label_login'); ?>">
					</td>
				</tr>
			</table>
		</form>
	<?php } ?>
</div>
<script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	<?php if ($this->input->get('message')) { ?>
		alert("<?php echo urldecode($this->input->get('message')); ?>");
	<?php } ?>
</script>