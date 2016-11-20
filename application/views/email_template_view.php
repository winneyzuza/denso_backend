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
	                    	<td width="100px"></td>
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
	                    <td><textarea id="email_field" name="Sender"><?php if(isset($email_template_info['sender'])) echo $email_template_info['sender']; ?></textarea></td>
	                	<td><div><p><strong>Format :</strong> email address | Alias &nbsp;<strong>Ex.</strong> ros@denso.co.th |&nbsp;ROS Online System</p></div></td>
	                </tr>
	                <tr>
	                    <td  valign="top"><?php echo lang('EmailContent'); ?><label required></td>
	                    <td><textarea id="email_content" name="EmailContent"><?php if(isset($email_template_info['email_content'])) echo $email_template_info['email_content']; ?></textarea></td>
	                	<td valign="top">
		                	<div class="tooltip_email">
								<p><strong>&nbsp; **Tip :&nbsp;</strong><span style="text-decoration: underline;"><strong>How to specify dynamic value</strong></span></p>
								<blockquote>
									<p>Input <strong>"ros_txt"</strong> tag as following format : {ros_txt:<em>data_name</em>}<br /> <strong>&nbsp; &nbsp; &nbsp; &nbsp; {ros_txt:}</strong>&nbsp; = ros format to specify dynamic value <br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; data_name</strong>&nbsp;= Possible value that system allow to specify</p>
									<p style="padding-left: 30px;">&nbsp;<strong>Ex. </strong>ros_no =&nbsp;TPA-020-16</p>
									<p style="padding-left: 60px;"><span style="color: #800000;"><em>1. Ros. No : <strong>{ros_txt:ros_no}</strong> &nbsp;(not include space or tab)</em></span></p>
									<p style="padding-left: 60px;"><strong>Result :</strong>&nbsp;Ros. No : TPA-020-16</p>
									<p style="padding-left: 60px;"><em><span style="color: #800000;">2.&nbsp;To view it, log in to the system&nbsp;&lt;a href="<strong>{ros_txt:base_url}</strong>/index.php/manage/ros/<strong>{ros_txt:ros_no}</strong>" target="_blank"&gt;this link&lt;/a&gt;</span></em></p>
									<p style="padding-left: 60px;"><strong>Result :</strong>&nbsp;To view it, log in to the system <a href="<?php base_url()?>index.php/manage/ros/TPA-020-16" target="_blank" data-saferedirecturl="https://www.google.com/url?hl=th&amp;q=http://localhost/denso//index.php/manage/ros/TPA-020-16&amp;source=gmail&amp;ust=1479576744331000&amp;usg=AFQjCNGlGGErO_0qxmqjArZW0mbSNZRIxg">this link</a></p>
									<p><strong>Possible value :&nbsp;</strong></p>
									<p style="padding-left: 30px;"><em>maker_id, dealer_id, part_id, car_model, frame_no, engine_no, engine_model, year, plate_no,repair_date, mileage, warranty, car_problem, car_problem_other, dtc_code, sd_name, car_condition,fuel_condition, parts_condition, part_failure_pn, part_exchange_pn, failure_sn_1, new_sn_1,remark, ros_no, part_quantity, car_condition_other, fuel_condition_other, parts_condition_other,created_time, status, created_by, part_type</em></p>
									<p style="padding-left: 30px;"><em>base_url : domain name url. Ex. localhost, https://ros.com</em></p>
								</blockquote>
		                	</div>
	                	</td>
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