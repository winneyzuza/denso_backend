<html>
    <head>
        <title>Email Template</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
        <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
        <script>
			jQuery(document).ready(function() {
		    	jQuery("[required]").after("<span class='required'> *</span>");
			});
		</script>
    </head>
    <body>
        <h1><?php echo lang('EmailSetting'); ?></h1>
       	<?PHP
		   	if (validation_errors()) {
		   		echo "<script>window.onload = function(){alert('" . validation_errors() . "');}</script>";
		   	}else{
		   		$msg = $this->session->userdata('addResult');
		   		if($msg != ''){
		   			if($msg == 'add_successful'){
		   				echo "<script>window.onload = function(){alert('" .  lang('update_successful') . "');}</script>";
		   			}else {
		   				echo "<script>window.onload = function(){alert('" .  lang('update_error') . "');}</script>";
		   			}
		   		}
		   	}
		   	$this->session->unset_userdata('addResult');
	  	 ?>	       
        <form name="emailTemplateFrm" id="emailTemplateFrm" action="<?PHP echo base_url();?>index.php/add/addEmailTemplate" method="post">
        	<input type="hidden" name="email_id" value="<?php if(isset($email_template_info['email_id'])) echo $email_template_info['email_id']; ?>" />
        	<div class="center_table">
	            <table class="table middle">
	            	<tobody>
	                	<tr>
	                    	<td></td>
	                        <td></td>
	                   	</tr>
	                </tobody>
	                <tr>
	                    <td><?php echo lang('Subject'); ?><label required></td>
	                    <td><input size="67" type="text" name="Subject" value="<?php if(isset($email_template_info['subject'])) echo $email_template_info['subject']; ?>" /></td>
	                </tr>
	                <tr>
	                <tr>
	                    <td><?php echo lang('Sender'); ?><label required></td>
	                    <td><input size="67" type="text" name="Sender" value="<?php if(isset($email_template_info['sender'])) echo $email_template_info['sender']; ?>" /></td>
	                </tr>
	                <tr>
	                    <td  valign="top"><?php echo lang('EmailContent'); ?><label required></td>
	                    <td><textarea id="email_content" name="EmailContent"><?php if(isset($email_template_info['email_content'])) echo $email_template_info['email_content']; ?></textarea></td>
	                </tr>
	                <tr>
	                	<td></td>
	                	<td align="center">
	                	<br/>
	                		<input type="submit" class="button blue_back" value="<?php echo lang('Save'); ?>">
						</td>
	                </tr>
	            </table>
	            <br/>
            </div>
        </form>
        <br/>
    </body>
</html>