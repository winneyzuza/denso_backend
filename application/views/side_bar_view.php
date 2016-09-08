<style>
    ul { padding-left: 20px; }
</style>
<div class="left" id="side_bar" style="height: 660px;">
	<div class="heading">
		<?php echo lang('side_user_heading'); ?>

	</div>
	<br/><br/>
	<div class="user">
		<div class="greeting text">
			<?php echo lang('side_user_greeting'); ?>
		</div>
		<div class="username text">
			<?php echo $this->session->userdata('username')?$this->session->userdata('username'):"Guest"; ?>
		</div>
		<br/>
		<div>
			<?php echo $this->session->userdata('logged_in')?(anchor('logout',lang('side_logout'))):""; ?>
		</div>
	</div>

	<?php if ($this->session->userdata('logged_in')) { ?>
		<div class="exchange">
			<ul>
				<li><?php echo lang('side_exchange_system'); ?></li>
				<ul>
					<li>
						<a href="<?php echo base_url(); ?>"><?php echo lang('side_DFIP'); ?></a>
					</li>
				</ul>
                <li>Backend function</li>
                <div id="sidemenu">
                    <ul>
                        <li class="has-sub"><?php echo anchor('add', 'Add'); ?>
                            <ul>
                                <li><?php echo anchor('add/alternator', 'Alternator'); ?></li>
                                <li><?php echo anchor('add/compressor', 'Compressor'); ?></li>
                                <li><?php echo anchor('dealer/adddealer', 'Dealer'); ?></li>
                                <li><?php echo anchor('add/injector', 'Injector'); ?></li>
                                <li><?php echo anchor('add/pumpparts', 'Pump Parts'); ?></li>
                                <li><?php echo anchor('servicedealer/addservicedealer', 'Service Dealer'); ?></li>
                                <li><?php echo anchor('add/starter', 'Starter'); ?></li>
                                <li><?php echo anchor('admin', 'Add Users'); ?></li>
                                <ul>
                                    <li><?php echo anchor('admin/servicedealer', 'Service Dealer Account'); ?></li>
                                    <li><?php echo anchor('admin/dealer', 'Admin Account') ?></li>
                                </ul>
                            </ul>
                        </li>
                        <li class="has-sub"><a href="#">Search / Update</a>
                            <ul>
                                <li><?php echo anchor('search/alternator', 'Alternator'); ?></li>
                                <li><?php echo anchor('search/compressor', 'Compressor'); ?></li>
                                <li><?php echo anchor('search', 'Dealer / Service Dealer'); ?></li>
                                <li><?php echo anchor('search/injector', 'Injector'); ?></li>
                                <li><?php echo anchor('search/pumpparts', 'Pump Parts'); ?></li>
                                <li><?php echo anchor('search/starter', 'Starter'); ?></li>
                                <li><?php echo anchor('search/users', 'Users'); ?></li>
                                <li><?php echo anchor('search/servicedealer', 'Dealer - SD Mapping'); ?></li>
                                <li><?php echo anchor('search/servicedealer?map=parts', 'Parts - SD Mapping'); ?></li>
                            </ul>
                        </li>
                    </ul>
                </div>
			</ul>
		</div>
	<?php } ?>
</div>
<div id="main_content">