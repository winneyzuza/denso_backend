<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/create.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/jquery-ui-1.9.2.custom.min.css">
<!-- <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/jquery-ui.min.css"> -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css"> -->
<form method="POST" id="create_frm">

	<div id="tabs">
            <div id="printform"></div>
		<ul>
			<li><a href="#page_1"><?php echo lang('create_menu_dealer_info'); ?></a></li>
			<li><a href="#page_2"><?php echo lang('create_menu_car_info'); ?></a></li>
			<!-- <li><a href="#page_2"><?php //echo lang('create_menu_car_prob'); ?></a></li> -->
			<li><a href="#page_3"><?php echo lang('create_menu_part_exchange'); ?></a></li>
		</ul>
		<div id="page_1" class="frm_part">
			<table>
				<tr>
					<td><?php echo lang('create_service_dealer_name'); ?></td>
					<td style="width:400px;"><u><b><?php echo $sd_info[lang('create_sd_name')]; ?></b></u></td>						<!-- FETCH FROM THE DATABASE -->
				</tr>

				<tr>
					<td><?php echo lang('create_service_dealer_address'); ?></td>
					<td style="width:400px;"><u><b><?php echo $sd_info['address']; ?></b></u></td>							<!-- FETCH FROM THE DATABASE -->
				</tr>

				<tr>
					<td><?php echo lang('create_service_dealer_telephone'); ?></td>
					<td style="width:400px;"><u><b><?php echo $sd_info['phone']; ?></b></u></td>								<!-- FETCH FROM THE DATABASE -->
				</tr>

				<tr>
					<td><?php echo lang('create_service_dealer_fax'); ?></td>
					<td style="width:400px;"><u><b><?php echo $sd_info['fax']; ?></b></u></td>								<!-- FETCH FROM THE DATABASE -->
				</tr>
			</table>

			<br/><br/><br/><hr/>
			<h2><?php echo lang('create_menu_dealer_info'); ?><span class="required">*</span></h2>
			<label><?php echo lang('create_car_maker'); ?><span class="required">*</span>
				<select name="maker_id" id="maker" class="req_field">
					<option selected disabled>Car Maker</option>
					<?php foreach ($car_makers as $key => $row) { ?>
					<option value="<?php echo $row['maker_id'] ?>"><?php echo $row[lang("create_car_maker_column")] ?></option>
					<?php } ?>
				</select>
			</label>
			<br/>
			<br/>
			<br/>
			<br/>
			<label>
				<?php echo lang('create_dealer_name'); ?><span class="required">*</span>
				<select name="dealer_id" style="width:250px;" id="dealer_name" class="req_field">
					<option value=""><?php echo lang('create_general_select'); ?></option>
				</select>
                                <?PHP if(isset($sd_info[lang('create_sd_name')]) && $ros_info['created_by'] != ''){ ?>
                                <label><input type="checkbox" id="frontshop" /> <?PHP echo lang('create_front_shop') ?></label>
                                <?PHP } ?>
			</label>
			<br/><br/>
			<h2><?php echo lang('create_part_type'); ?><span class="required">*</span></h2>
			<label><input type="radio" class="part_type" value="pump" disabled /> <?php echo lang('create_supply_pump'); ?>
				<input type="hidden" name="supply_pump" value="true" />
			</label>
			<label><input type="radio" class="part_type" value="injector" disabled/><?php echo lang('create_injector'); ?>
				<input type="hidden" name="injector" value="false" />
			</label>
			<br/><br/>
			<button type="button" class="blue_back button next_tab" style="margin-left: 65%;"><?php echo lang('create_next'); ?></button>
		</div>
		<div id="page_2" class="frm_part">
			<table>
				<!-- <tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_car_maker'); ?></td>
					<td>
						<select name="car_maker">
							<option value=""><?php echo lang('create_general_select'); ?></option>
						</select>
					</td>
					<td><?php echo lang('create_dealer_name'); ?></td>
					<td colspan="3">
						<select name="dealer_name">
							<option value=""><?php echo lang('create_general_select'); ?></option>
						</select>
					</td>
				</tr> -->
				<tr>
					<td><?php echo lang('create_car_model'); ?><span class="required">*</span></td>
					<td>
						<select name="car_model" class="req_field">
							<option value=""><?php echo lang('create_general_select'); ?></option>
						</select>
					</td>
					<td><?php echo lang('create_frame_number'); ?><span class="required">*</span></td>
                                        <td style="white-space: nowrap;">
                                            <input type="text" name="frame_no" placeholder="<?php echo lang('create_frame_number'); ?>" class="req_field">
                                            <label><input type="checkbox" id="frame_indiscernible"/><?php echo lang('create_indiscernible'); ?></label>
                                        </td>
					<td><?php echo lang('create_engine_number'); ?><span class="required">*</span></td>
					<td style="white-space: nowrap;">
                                            <input type="text" name="engine_no" placeholder="<?php echo lang('create_engine_number'); ?>" class="req_field">
                                            <label><input type="checkbox" id="engine_indiscernible"/><?php echo lang('create_indiscernible'); ?></label>
                                        </td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_engine_model'); ?><span class="required">*</span></td>
					<td>
						<select name="engine_model" class="req_field">
							<option value=""><?php echo lang('create_general_select'); ?></option>
						</select>
					</td>
					<td><?php echo lang('create_year'); ?></td>
					<td><input type="text" name="year" placeholder="<?php echo lang('create_year'); ?>"></td>
					<td><?php echo lang('create_plate_no'); ?></td>
					<td><input type="text" name="plate_no" placeholder="<?php echo lang('create_plate_no'); ?>"></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_delivery_date'); ?><span class="required">*</span></td>
					<td><input type="text" name="delivery_date" placeholder="<?php echo lang('create_delivery_date'); ?>" class="date req_field" readonly="readonly"></td>
					<td><?php echo lang('create_repair_date'); ?><span class="required">*</span></td>
					<td><input type="text" name="repair_date" placeholder="<?php echo lang('create_repair_date'); ?>" class="date req_field" readonly="readonly"></td>
					<td><?php echo lang('create_mileage'); ?><span class="required">*</span></td>
					<td><input type="text" name="mileage" placeholder="<?php echo lang('create_mileage'); ?>" class="req_field"></td>
				</tr>
                                <!--For IE8 bug-->
                                <tr>
                                    <td><input type="text" name="dummy" class="date hidden" readonly="readonly" disabled hidden></td>
                                </tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_warranty_condition'); ?></td>
					<td>
						<label><input type="radio" name="warranty" value="in" disabled> <?php echo lang('create_warranty_in'); ?></input></label>
						<label><input type="radio" name="warranty" value="out" disabled> <?php echo lang('create_warranty_out'); ?></input></label>
					</td>
					<td></td>
					<td></td>
					<td colspan="2"><?php //echo lang('create_status_of_ros'); ?></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_car_problem'); ?><span class="required">*</span></td>
					<td colspan="2">
						<select name="car_problem" class="req_field">
							<option value=""><?php echo lang('create_general_select'); ?></option>
							<?php foreach ($problems as $key => $value) {
								echo "<option value='".$value['id']."'>".$value[lang('create_problems_column')]."</option>";
							} ?>
						</select>
					</td>
					<td><?php echo lang('create_others'); ?></td>
					<td colspan="2"><input type="text" name="car_problem_other" placeholder="<?php echo lang('create_others'); ?>" disabled /></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_dtc_code'); ?></td>
					<td><input type="text" name="dtc_code" placeholder="<?php echo lang('create_dtc_code'); ?>" /></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_car_condition'); ?></td>
                                        <td colspan="5">
                                            <label><input type="radio" name="car_condition" value="original" checked/> <?php echo lang('create_condition_original'); ?></label>
                                            <label><input type="radio" name="car_condition" value="modified" /> <?php echo lang('create_condition_modify'); ?></label>
                                            <label><input type="radio" name="car_condition" value="others" /><?php echo lang('create_others'); ?></label>
                                            <input style="width: auto;" type="text" name="car_condition_other" disabled />
                                            <?php echo lang('create_car_condition_ex'); ?>
                                        </td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_fuel_condition'); ?></td>
                                        <td colspan="5">
                                            <label><input type="radio" name="fuel_condition" value="normal" checked/> <?php echo lang('create_condition_normal'); ?></label>
                                            <label><input type="radio" name="fuel_condition" value="abnormal" /> <?php echo lang('create_condition_abnormal'); ?></label>
                                            <input style="width: auto;" type="text" name="fuel_condition_other" disabled />
                                            <?php echo lang('create_fuel_condition_ex'); ?>
                                        </td>
				</tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><?php echo lang('create_parts_condition'); ?></td>
                                        <td colspan="5">
                                            <label><input type="radio" name="parts_condition" value="normal" checked/> <?php echo lang('create_condition_normal'); ?></label>
                                            <label><input type="radio" name="parts_condition" value="broken" /> <?php echo lang('create_condition_broken'); ?></label>
                                            <label><input type="radio" name="parts_condition" value="color changed" /> <?php echo lang('create_condition_color_changed'); ?></label>
                                            <label><input type="radio" name="parts_condition" value="others" /> <?php echo lang('create_others'); ?></label>
                                            <input style="width: auto;" type="text" name="parts_condition_other" disabled />
                                            <?php echo lang('create_parts_condition_ex'); ?>
                                        </td>
				</tr>
				<tr class="empty_row"></tr>
				<tr class="empty_row"></tr>
				<tr>
					<td><button type="button" class="blue_back button prev_tab"><?php echo lang('create_back'); ?></button></td>
					<td colspan="3"></td>
					<td><button type="button" class="blue_back button next_tab" ><?php echo lang('create_next'); ?></button></td>
				</tr>
			</table>
		</div>
		<div id="page_3" class="frm_part">
			<table>
				<!-- <tr>
					<td><?php echo lang('create_exchange_part'); ?></td>
					<td colspan="3"></td>
					<td class="blue_back"><?php echo lang('create_status_of_ros'); ?></td>
				</tr> -->
				<tr class="empty_row"></tr>
                <tr class="pump parttype"><td colspan="4"><?php echo lang('create_pump_exchange'); ?></td></tr>
                <tr class="empty_row"></tr>
				<!-- <tr>
					<td colspan="2"><label><input type="checkbox" /> <?php echo lang('create_supply_pump'); ?>
						<input type="hidden" name="supply_pump" value="false" />
					</label></td>
					<td class="right"><?php echo lang('create_quantity'); ?></td>
					<td><input type="text" name="quantity" placeholder="<?php echo lang('create_quantity'); ?>" />&nbsp;&nbsp;<?php echo lang('create_quantity_unit'); ?></td>
				</tr>
				<tr class="empty_row"></tr> -->
				<tr class="pump parttype">
					<td></td>
					<td><?php echo lang('create_failure'); ?></td>
					<td></td>
					<td><?php echo lang('create_exchange'); ?></td>
				</tr>
				<tr class="pump parttype">
					<td class="right"><?php echo lang('create_pn'); ?><span class="required">*</span></td>
					<td>
						<select name="failure_pn">
							<option value=""><?php echo lang('create_general_select'); ?></option>
						</select>
					</td>
					<td class="right"><?php echo lang('create_pn'); ?></td>
					<td colspan="2"><input type="text" readonly name="exchange_pn" ></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr class="pump parttype">
					<td class="right"><?php echo lang('create_sn'); ?></td>
                                        <td><textarea name="failure_sn"></textarea></td>
<!--					<td><input type="text" name="failure_sn"></td>-->
				</tr>
                                <tr class="empty_row"></tr>
                <tr class="injector parttype"><td colspan="4"><?php echo lang('create_injector_exchange'); ?></td></tr>
                <tr class="empty_row"></tr>
				<tr class="injector hidden parttype">
					<!-- <td colspan="2"><label><input type="checkbox" /><?php echo lang('create_injector'); ?>
						<input type="hidden" name="injector" value="false" />
					</label></td> -->
					<td class="right"><?php echo lang('create_quantity'); ?></td>
					<td><input type="text" name="inj_quantity" placeholder="Quantity" />&nbsp;&nbsp;<?php echo lang('create_quantity_unit'); ?></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr class="injector hidden parttype">
					<td></td>
					<td><?php echo lang('create_failure'); ?></td>
					<td></td>
					<td><?php echo lang('create_exchange'); ?></td>
				</tr>
				<tr class="injector hidden parttype">
					<td class="right"><?php echo lang('create_pn'); ?></td>
					<td>
						<select name="inj_failure_pn">
							<option value=""><?php echo lang('create_general_select'); ?></option>
						</select>
					</td>
					<td class="right"><?php echo lang('create_pn'); ?></td>
					<td colspan="2"><input type="text" readonly name="inj_exchange_pn"></td>
				</tr>
				<tr class="empty_row"></tr>
				<tr class="injector hidden parttype">
					<td></td>
					<!-- <td class="right"><?php echo lang('create_failure')." ".lang('create_sn')." "; ?></td> -->
					<td>#1</td>
					<td>#2</td>
					<td>#3</td>
					<td>#4</td>
					<td>#5</td>
					<td>#6</td>
				</tr>
				<tr class="injector hidden parttype">
					<td class="right"><?php echo lang('create_failure')." ".lang('create_sn')." "; ?></td>
                                        <td><textarea name="failure_sn_1"></textarea></td>
                                        <td><textarea name="failure_sn_2"></textarea></td>
                                        <td><textarea name="failure_sn_3"></textarea></td>
                                        <td><textarea name="failure_sn_4"></textarea></td>
                                        <td><textarea name="failure_sn_5"></textarea></td>
                                        <td><textarea name="failure_sn_6"></textarea></td>
<!--					<td><input type="text" name="failure_sn_1" placeholder="#1" /></td>
					<td><input type="text" name="failure_sn_2" placeholder="#2" /></td>
					<td><input type="text" name="failure_sn_3" placeholder="#3" /></td>
					<td><input type="text" name="failure_sn_4" placeholder="#4" /></td>
					<td><input type="text" name="failure_sn_5" placeholder="#5" /></td>
					<td><input type="text" name="failure_sn_6" placeholder="#6" /></td>-->
				</tr>
				<tr class="empty_row"></tr>
                                <tr>
                                    <td><?PHP echo lang('create_remark'); ?></td>
                                    <td colspan="6"><textarea name="remark"></textarea></td>
                                </tr>
				<tr>
					<td>
						<label>Status</label>
					</td>
					<td>
						<select name="status" id="status">
							<option disabled><?php echo $ros_info['status']; ?></option>
							<?php if($ros_info['status'] == 'Request' ||$ros_info['status'] == 'Core Return') echo $next_statuses; ?>
						</select>
					</td>
				</tr>
				<tr class="empty_row"></tr>
				<tr class="empty_row"></tr>
				<tr class="empty_row" id="part_code"></tr>
				<tr>
					<td colspan="2"><button type="button" class="blue_back button prev_tab"><?php echo lang('create_back'); ?></button></td>
					<td colspan="2"></td>
					<td><button type="button" id="frm_submit" class="blue_back button" data-action="<?php echo (isset($ros_info['ros_no']) AND $ros_info['status']!='Draft')?('update'):('add'); ?>"><?php echo lang('create_update'); ?></button></td>
				</tr>
			</table>
		</div>
	</div>
	<br/><br/>
	<!-- <button type="button" class="blue_back button"><?php //echo lang('create_save_draft'); ?></button> -->
</form>

<!--script src="<?php echo base_url(); ?>application/assets/js/jquery-2.1.3.min.js"></script-->
<script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
<script src="<?php echo base_url(); ?>application/assets/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="<?php echo base_url(); ?>application/assets/js/jquery.datetimepicker.js"></script>
<script src="<?php echo base_url(); ?>application/assets/js/jquery.deserialize.js"></script>
<!--script src="<?php echo base_url(); ?>application/assets/js/jquery-ui.min.js"></script-->
<!--<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>-->
<script>
	$(document).ready(function(){
		// SHOW SOME FANCY LOADING
		var warranty_info = {};
                var frontd = '<option value="<?PHP echo $ros_info['created_by']; ?>"><?PHP if(isset($sd_info[lang('create_sd_name')])) echo $sd_info[lang('create_sd_name')]; ?></option>';
                var ajaxd = '<option value=""><?php echo lang('create_general_select'); ?></option>';
		var formdata = <?php echo isset($ros_info)?json_encode($ros_info):"null"; ?>;
		var editable = "<?php echo $editable; ?>";
		// console.log(formdata);
		if (formdata!=null) {
            $("input[name='car_condition_other']").prop("disabled", false);
            $("input[name='fuel_condition_other']").prop("disabled", false);
            $("input[name='parts_condition_other']").prop("disabled", false);
            $("input[name='car_problem_other']").prop("disabled", false);
			$('body').append("<div id='mask'><div id='loader'><img src='<?php echo base_url(); ?>application/assets/images/ajax-loader.gif' alt='loading'></div></div>");
			$("#create_frm").deserialize(formdata,{"change":change, "complete":complete});
		}
		function change (value,element) {
			// CUSTOM OPERATIONS ON CHANGE (AJAX DATA)
			switch(element){
				case "maker_id":
					maker_change();
				break;

				case "injector":
					injector_check();
				break;

				case "car_model":
					model_change();
				break;

				case "engine_model":
					engine_change();
				break;

				case "delivery_date":
				case "repair_date":
					if (value!=null){
						addDate(new Date(value),$("input[name='"+element+"']"),"loaded");
					}
				break;

				case "mileage":
					if (value!=null){
						mileage_change();
					}
				break;

				case "failure_pn":
					failure_change();
                break;
                
                case "car_condition":
                case "fuel_condition":
                case "parts_condition":
                        radio_change();
                break;
                
                case "car_problem":
                        car_problem_change()
                break;
                        
                case "frame_no":
                case "engine_no":
                        frame_init();
				break;
			}
		}
                
                $("select[name='car_problem']").on("change",car_problem_change);
                
                function car_problem_change(){
                    if($("select[name='car_problem']").val() == 10){
                        $("input[name='car_problem_other']").prop("disabled", false);
                    }
                    else{
                        $("input[name='car_problem_other']").prop("disabled", true);
                    }
                }
                
                function frame_init(){
                    if($("input[name='frame_no']").val() == 'XXXXX'){
                        $("#frame_indiscernible").prop("checked", true);
                        $("input[name='frame_no']").prop("readonly", true);
                    }
                    if($("input[name='engine_no']").val() == 'XXXXX'){
                        $("#engine_indiscernible").prop("checked", true);
                        $("input[name='engine_no']").prop("readonly", true);
                    }
                }
                
                $("#frame_indiscernible").on("change",frame_change);
                $("#engine_indiscernible").on("change",frame_change);
                
                function frame_change(){
                    if($("#frame_indiscernible").is(':checked')){
                        $("input[name='frame_no']").val('XXXXX');
                        $("input[name='frame_no']").prop("readonly", true);
                    }
                    else{
                        $("input[name='frame_no']").prop("readonly", false);
                    }
                    if($("#engine_indiscernible").is(':checked')){
                        $("input[name='engine_no']").val('XXXXX');
                        $("input[name='engine_no']").prop("readonly", true);
                    }
                    else{
                        $("input[name='engine_no']").prop("readonly", false);
                    }
                }
                
                $("input[name='car_condition']").on("change",radio_change);
                $("input[name='fuel_condition']").on("change",radio_change);
                $("input[name='parts_condition']").on("change",radio_change);
                
                function radio_change(){
                    if($("input[name='car_condition']:checked").val() != 'others'){
                        $("input[name='car_condition_other']").prop("disabled", true);
                    }
                    else{
                        $("input[name='car_condition_other']").prop("disabled", false);
                    }
                    
                    if($("input[name='fuel_condition']:checked").val() == 'normal'){
                        $("input[name='fuel_condition_other']").prop("disabled", true);
                    }
                    else{
                        $("input[name='fuel_condition_other']").prop("disabled", false);
                    }
                    
                    if($("input[name='parts_condition']:checked").val() != 'others'){
                        $("input[name='parts_condition_other']").prop("disabled", true);
                    }
                    else{
                        $("input[name='parts_condition_other']").prop("disabled", false);
                    }
                }
                
                $('#frontshop').on('change', frontshop);
                
                function frontshop(){
                    if($('#frontshop').is(':checked')){
                        $('#dealer_name').html(frontd);
                    }
                    else{
                        $('#dealer_name').html(ajaxd);
                    }
                }

		function complete () {
            <?php
                if(isset($ros_info['dealer_id'])){
                    if(strpos($ros_info['dealer_id'], 'SD') !== false){
                        echo "$('#frontshop').prop('checked', true);";
                        echo "frontshop();";
                    }
                }
            ?>
			// HIDE THE FANCY LOADER
			$("#mask").remove();
			// Make the form uneditable if not allowed to be edited
			if (editable == 0) {
				$("#create_frm").find("input, select:not('#status')")
					.attr("disabled","disabled")
					.removeClass("req_field")
					.css("cursor","not-allowed")
					.attr("title","Editing not allowed");
			}
//                        console.log("Done loading data.");
		}
                
                $('.date').datepicker({
                    dateFormat:'dd-mm-yy',
                    yearRange:'-50:+10',
                    changeMonth:true,
                    changeYear:true,
                    <?PHP if($this->session->userdata('lang') == 'th'){ ?>
                        closeText: 'ปิด',
                        prevText: '&#xAB;&#xA0;ย้อน',
                        nextText: 'ถัดไป&#xA0;&#xBB;',
                        currentText: 'วันนี้',
                        monthNames: ['มกราคม','กุมภาพันธ์','มีนาคม','เมษายน','พฤษภาคม','มิถุนายน',
                        'กรกฎาคม','สิงหาคม','กันยายน','ตุลาคม','พฤศจิกายน','ธันวาคม'],
                        monthNamesShort: ['ม.ค.','ก.พ.','มี.ค.','เม.ย.','พ.ค.','มิ.ย.',
                        'ก.ค.','ส.ค.','ก.ย.','ต.ค.','พ.ย.','ธ.ค.'],
                        dayNames: ['อาทิตย์','จันทร์','อังคาร','พุธ','พฤหัสบดี','ศุกร์','เสาร์'],
                        dayNamesShort: ['อา.','จ.','อ.','พ.','พฤ.','ศ.','ส.'],
                        dayNamesMin: ['อา.','จ.','อ.','พ.','พฤ.','ศ.','ส.'],
                    <?PHP } ?>
                    onSelect: addDate
                });

		$('#tabs').tabs({
			disabled: [1, 2]
		});

		function addDate (date, field, event) {
			if(event == 'loaded'){
                            field_name = (field).attr("name");
                            field_value = (date).dateFormat("Y-m-d");
                        }
                        else{
                            field_name = this.name;
                            field_value = date;
                        }
			warranty_info[field_name] = field_value;
			getwarranty();
		}

		$("input[name='mileage']").on("change",mileage_change);


		function mileage_change(){
			warranty_info["mileage"] = $("input[name='mileage']").val();
			getwarranty();
		}

		function injector_check () {
			$(".part_type").each(function(){
				var _me = $(this);
				if (_me.siblings("input[type='hidden']").val() == "true") {
					_me.prop("checked",true);
					part_change({currentTarget: _me});
				} else {
					_me.prop("checked", false);
				}

			});
		}

		function getwarranty () {
			// console.log(warranty_info);
                        var warrantycount = 0;
                        $.each(warranty_info, function (key, value){
                            warrantycount++;
                        });
			if (warrantycount != 3) {
				// console.log("Not enough info.");
			} else{
				warranty_info["maker_id"] = $('#maker option:selected').val();
                                warranty_info['repair_date'] = $("input[name='repair_date']").val();
                                warranty_info['delivery_date'] = $("input[name='delivery_date']").val();
				data = $.param(warranty_info);			//SERIALIZE THE OBJECT TO SEND IN AJAX
				// console.log("Sending request....");
				$.ajax({
					url: "<?php echo base_url(); ?>index.php/manage/getwarranty",
					type: "POST",
					data: data,
					dataType: "json",
					async: false,
					success: function(data){
						if (data.code == 1) {
							$("input[name='warranty']").each(function(index, element){
								var radio = $(this);
								radio.attr("disabled","disabled");
								if(radio.val() == data.warranty){
									radio.removeAttr("disabled");
									radio.prop("checked","checked");
								}
							});
						} else {
							alert(data.message);
						}
					},
					error: function(one, two, three){
						//console.log(one);
						//console.log(two);
						//console.log(three);
					},
					complete: function(){
						delete warranty_info["maker_id"];
					}
				});
			}
		}

		$(document).on('click',".next_tab",function(){
			var button = $(this);
			var fields = button.parents('div.frm_part').find(".req_field");
			var error = 0;
			fields.each(function(){
				var input = $(this);
				if (input.val() == "") {
					input.addClass("error");
					error = 1;
				} else{
					input.removeClass("error");
				}
			});
			if (error == 0) {
				var currenttab = $("#tabs").tabs("option","active");
				temp = [0,1,2];
				temp.splice(currenttab+1,1);
				$("#tabs").tabs("option","disabled",false);
				var nextid = button.parents('div').next('div').attr('id');
				var nexttab = $('#tabs a[href="#'+nextid+'"]');
				nexttab.click();
				$('#side_bar').height($('#tabs').height() + 7);
				$("#tabs").tabs("option","disabled",temp);
			} else{
				alert("VALIDATION ERROR");
			}
		});

		$(document).on('click',".prev_tab",function(){
			var currenttab = $("#tabs").tabs("option","active");
			temp = [0,1,2];
			temp.splice(currenttab-1,1);
			$("#tabs").tabs("option","disabled",false);
			var button = $(this);
			var nextid = button.parents('div').prev('div').attr('id');
			var nexttab = $('#tabs a[href="#'+nextid+'"]');
			nexttab.click();
			$('#side_bar').height($('#tabs').height() + 7);
			$("#tabs").tabs("option","disabled",temp);
		});

		$('#tabs a').click(function(){
			$('#side_bar').height($('#tabs').height() + 7);
			return false;
		});
		$('#side_bar').height($('#tabs').height() + 7);

		$('#maker').on('change',maker_change);

		function maker_change () {
			var maker_id = $('#maker option:selected').val();
			if (maker_id!="") {
				$('.part_type').removeAttr("disabled");
				// var temp = $(".part_type")[0];
				// $(temp).trigger("change");
				$('#maker').attr('disabled','disabled');
				$.ajax({
					url: "<?php echo base_url(); ?>index.php/manage/getdealers",
					type: "POST",
					data: "maker_id="+maker_id,
					dataType: "json",
					async: false,
					success: function(data){
						// console.log(data);
						if (data.code == "1") {
                            ajaxd = data.message;
                            frontshop();
						} else {
							alert(data.message);
							$('#dealer_name').html("<option selected value=''><?php echo lang('create_general_select'); ?></option>");
						}
					},
					error: function(one, two, three){
						// console.log(one);
						// console.log(two);
						// console.log(three);
					},
					complete: function(){
						$('#maker').removeAttr('disabled');
					}
				});
				part_change({currentTarget : $('.part_type:first')});
			}
		}

		$('#frm_submit').on('click',function(){
			var button = $(this);
			var form = $("#create_frm");
			var data = form.serialize();
			var draft = button.attr("id")=="frm_submit"?"false":"true";
			var action = button.data("action");
                        if($('select[name="failure_pn"]').val()=='' && draft == 'false' && !$('select[name="failure_pn"]').parents('tr').hasClass('hidden')){
                            $('select[name="failure_pn"]').addClass("error");
                            alert("VALIDATION ERROR");
                            return false;
                        }
                        else{
                            $('select[name="failure_pn"]').removeClass("error");
                        }
                        if($('select[name="inj_failure_pn"]').val()=='' && draft == 'false' && !$('select[name="inj_failure_pn"]').parents('tr').hasClass('hidden')){
                            $('select[name="inj_failure_pn"]').addClass("error");
                            alert("VALIDATION ERROR");
                            return false;
                        }
                        else{
                            $('select[name="inj_failure_pn"]').removeClass("error");
                        }

			var maker_name = $('#maker:checked').parent('label').text();
			var inputs = form.find("input, select");
			inputs.attr("disabled","disabled");
			$.ajax({
				url: "<?php echo base_url(); ?>index.php/manage/ros",
				type: "POST",
				data: data+"&maker_name="+maker_name+"&action="+action+"&draft="+draft+"&ros_no=<?php echo isset($ros_info['ros_no'])?$ros_info['ros_no']:''; ?>",
				dataType: "json",
				success: function(data){
					if (data.code == "1") {
						alert(data.message);
						window.location.href="<?php echo base_url(); ?>";
						// location.reload(true);
					}
//					console.log(data);
				},
				error: function(one, two, three){
					//console.log(one);
					//console.log(two);
					//console.log(three);
				},
				complete: function(){
					inputs.removeAttr("disabled");
				}
			});
		});

		$('#del_draft').on('click',function(){
			var button = $(this);
			var form = $("#create_frm");
			var inputs = form.find("input, select");
			inputs.attr("disabled","disabled");
			$.ajax({
				url: "<?php echo base_url(); ?>index.php/manage/delete",
				type: "POST",
				data: "ros_no=<?php echo isset($ros_info['ros_no'])?$ros_info['ros_no']:''; ?>",
				dataType: "json",
				success: function(data){
					if (data.code == "1") {
						alert("Deleted successfully.");
						window.location.href="<?php echo base_url(); ?>index.php/manage";
						// location.reload(true);
					} else {
						alert(data.message);
					}
				},
				error: function(one, two, three){
					//console.log(one);
					//console.log(two);
					//console.log(three);
				},
				complete: function(){
					inputs.removeAttr("disabled");
				}
			});
		});

		$(".part_type").on("change",part_change);

		function part_change(ev){
			var _this = ev.currentTarget;
			var radio = $(_this);
			$(".part_type").attr("disabled","disabled");
			$(".parttype").addClass("hidden");
			$(".part_type").each(function(){
				$(this).prop("checked",false);
				$(this).siblings("input[type='hidden']").val("false");
				// console.log($(this));
			});
			radio.prop("checked",true);
			$("."+radio.val()).removeClass("hidden");
			radio.siblings("input[type='hidden']").val("true");
                        $("select[name='engine_model']").html("<option value=''>Select</option>");

			$.ajax({
				url: "<?php echo base_url(); ?>index.php/manage/getcarmodels",
				type: "POST",
				data: "maker_id="+($("#maker option:selected").val())+"&part_type="+(radio.val()),
				dataType: "json",
				async: false,
				success: function(data){
					//console.log(data);
					if (data.code == "200") {
						$('select[name="car_model"]').html(data.message);
					} else{
						$('select[name="car_model"]').html("<option value=''>Select</option>");
					}
				},
				error: function(one, two, three){
					//console.log(one);
					//console.log(two);
					//console.log(three);
				},
				complete: function(){
					$(".part_type").removeAttr('disabled');
				}
			});
		}

		
		$('select[name="car_model"]').on("change",model_change);

		function model_change(){
			var value = $('select[name="car_model"] option:selected').val();
			if (value!="") {
				$.ajax({
					url: "<?php echo base_url(); ?>index.php/manage/getenginemodels",
					type: "POST",
					data: "maker_id="+($("#maker option:selected").val())+"&part_type="+($(".part_type:checked").val())+"&car_model="+value,
					dataType: "json",
					async: false,
					success: function(data){
						//console.log(data);
						if (data.code == "200") {
							$('select[name="engine_model"]').html(data.message);
						} else{
							$('select[name="engine_model"]').html("<option value=''>Select</option>");
						}
					},
					error: function(one, two, three){
						//console.log(one);
						//console.log(two);
						//console.log(three);
					},
					complete: function(){
						// $(".part_type").removeAttr('disabled');
					}
				});
			}
		}
                
        $('select[name="engine_model"]').on("change",engine_change);

    	function engine_change(){
			var value = $('select[name="engine_model"] option:selected').val();
			if (value!="") {
				$.ajax({
					url: "<?php echo base_url(); ?>index.php/manage/getfailuremodels",
					type: "POST",
					data: "maker_id="+($("#maker option:selected").val())+"&part_type="+($(".part_type:checked").val())+"&car_model="+$('select[name="car_model"] option:selected').val()+"&engine_model="+value,
					dataType: "json",
					async: false,
					success: function(data){
						//console.log(data);
						if (data.code == "200") {
                                                    if($(".part_type:checked").val() == 'injector')
							$('select[name="inj_failure_pn"]').html(data.message);
                                                    else
                                                        $('select[name="failure_pn"]').html(data.message);
						} else{
							$('select[name="failure_pn"]').html("<option value=''>Select</option>");
                                                        $('select[name="inj_failure_pn"]').html("<option value=''>Select</option>");
						}
					},
					error: function(one, two, three){
						//console.log(one);
						//console.log(two);
						//console.log(three);
					},
					complete: function(){
						// $(".part_type").removeAttr('disabled');
					}
				});
			}
		}
                
    	$('select[name="failure_pn"], select[name="inj_failure_pn"]').on("change",failure_change);

		function failure_change(){
                        if($(".part_type:checked").val() == 'injector')
                            var value = $('select[name="inj_failure_pn"] option:selected').val();
                        else
                            var value = $('select[name="failure_pn"] option:selected').val();
			if (value!="") {
				$.ajax({
					url: "<?php echo base_url(); ?>index.php/manage/getexchangemodels",
					type: "POST",
					data: "maker_id="+($("#maker option:selected").val())+"&part_type="+($(".part_type:checked").val())+"&car_model="+$('select[name="car_model"] option:selected').val()+"&engine_model="+$('select[name="engine_model"] option:selected').val()+"&car_maker_PN="+value,
					dataType: "json",
					async: false,
					success: function(data){
						//console.log(data);
						if (data.code == "200") {
                                                    if($(".part_type:checked").val() == 'injector')
							$("input[name='inj_exchange_pn']").val(data.message);
                                                    else
                                                        $("input[name='exchange_pn']").val(data.message);
                                                    $("#part_code").html("<input type='hidden' name='part_code' value='"+data.part_code+"' />");
						} else{
							$('select[name="exchange_pn"]').val('');
                                                        $('select[name="inj_exchange_pn"]').val('');
						}
					},
					error: function(one, two, three){
						//console.log(one);
						//console.log(two);
						//console.log(three);
					},
					complete: function(){
						// $(".part_type").removeAttr('disabled');
					}
				});
			}
		}
                
                $('#printform').on('click',function(){
                        alert('Opening new window to print!');
                        var editable = "<?php echo $editable; ?>";
                        if (editable == 0){
                            $("#create_frm").find("input, select:not('#status')")
                                    .prop("disabled", false);
                        }
			var form = $("#create_frm");
			var data = form.serialize();
			var inputs = form.find("input, select");
                        window.open("<?php echo base_url(); ?>index.php/manage/printform/?" + data+"&CarMaker="+$("#maker option:selected").text()+"&ros_no=<?php echo isset($ros_info['ros_no'])?$ros_info['ros_no']:''; ?>");
                        if (editable == 0) {
                            $("#create_frm").find("input, select:not('#status')")
                                    .attr("disabled","disabled")
                                    .removeClass("req_field")
                                    .css("cursor","not-allowed")
                                    .attr("title","Editing not allowed");
			}
		});
                
                $('input[name="year"]').on('keyup', function(){
                    $(this).val($(this).val().replace(/[^0-9]/g, ''));
                });
                $('input[name="mileage"]').on('keyup', function(){
                    $(this).val($(this).val().replace(/[^0-9]/g, ''));
                });

//		$('select[name="failure_pn"]').on("change",function(){
//			var value = $('select[name="failure_pn"] option:selected').data("exchange");
//			$("input[name='exchange_pn']").val(value);
//		});
	});
</script>