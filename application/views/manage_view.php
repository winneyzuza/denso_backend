<?PHP
//    $this->db->select('created_time');
//    $result = $this->db->get_where('status_log', array('status' => 'Approved', 'ros_no' => 'TPA-003-15'))->row_array();
//    echo "created time = ".$result['created_time'];
    
//    echo "<pre>"; print_r($records);echo "</pre>";
    
?>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/manage.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/jquery-ui.min.css">
<?php
    $car_makers = "<option value=''>All</option>";
    $statuses = "<option value=''>Status</option>";
    $service_dealers = "<option value=''>All</option>";
    $dealers = "<option value=''>All</option>";
    $all_makers = array();
    $all_dealers = array();
    $all_statuses = array();
    $all_sd = array();
    
    foreach ($table_makers as $key => $row) {
        if($this->input->get('CarMaker') == $row[lang('manage_maker_name')])
            array_push($all_makers, "<option value='".$row[lang('manage_maker_name')]."' selected>".$row[lang('manage_maker_name')]."</option>");
        else
            array_push($all_makers, "<option value='".$row[lang('manage_maker_name')]."'>".$row[lang('manage_maker_name')]."</option>");
    }

    foreach ($table_statuses as $key => $row) {
        if($row['status'] != 'Draft'){
            if($this->input->get('status') == $row['status'])
                array_push($all_statuses, "<option value='".$row['status']."' selected>".$row['status']."</option>");
            else
                array_push($all_statuses, "<option value='".$row['status']."'>".$row['status']."</option>");
        }
    }

    foreach ($table_dealers as $key => $row) {
        if($this->input->get('DealerName') == $row[lang('manage_dealer_name')])
            array_push($all_dealers, "<option value='".$row[lang('manage_dealer_name')]."' selected>".$row[lang('manage_dealer_name')]."</option>");
        else
            array_push($all_dealers, "<option value='".$row[lang('manage_dealer_name')]."'>".$row[lang('manage_dealer_name')]."</option>");
    }
    
    foreach ($table_sd as $key => $row) {
        if($this->input->get('SDName') == $row[lang('manage_sd_name')] && $this->input->get('SDName'))
            array_push($all_sd, "<option value='".$row[lang('manage_sd_name')]."' selected>".$row[lang('manage_sd_name')]."</option>");
        else
            array_push($all_sd, "<option value='".$row[lang('manage_sd_name')]."'>".$row[lang('manage_sd_name')]."</option>");
    }

    $car_makers.= implode("", array_unique($all_makers));
    $statuses.= implode("", array_unique($all_statuses));
    $service_dealers.= implode("", array_unique($all_sd));
    $dealers.= implode("", array_unique($all_dealers));
?>
<div style="float:right;">
    <label>
        Auto Refresh
        <select id="auto_refresh" style="padding:5px;">
            <option value="on">On</option>
            <option value="off">Off</option>
        </select>
    </label>
</div>
<form type="GET" id="create_frm">
    <table class="table middle">
        <tr>
            <td><?PHP echo lang('manage_car_maker') ?></td>
            <td><select name="CarMaker"><?PHP echo $car_makers; ?></select></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_dealer_names') ?></td>
            <td colspan="3"><select name="DealerName"><?PHP echo $dealers; ?></select></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_dealer_keyword') ?></td>
            <td colspan="3"><input type="text" name="DealerKey" value="<?PHP echo $this->input->get('DealerKey'); ?>" /></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_service_dealer') ?></td>
            <td colspan="3"><select name="SDName"><?PHP echo $service_dealers; ?></select></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_service_dealer_keyword') ?></td>
            <td colspan="3"><input type="text" name="SDKey" value="<?PHP echo $this->input->get('SDKey'); ?>" /></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_ros_no') ?></td>
            <td colspan="3"><input type="text" name="RosNo" value="<?PHP echo $this->input->get('RosNo') ?>" /></td>
        </tr>
        <tr>
            <td><?php echo lang('manage_plate_no'); ?></td>
            <td colspan="3"><input type="text" name="plate_no" value="<?php echo $this->input->get('plate_no'); ?>"/></td>
        </tr>
        <tr>
            <td><?php echo lang('manage_frame_no'); ?></td>
            <td colspan="3"><input type="text" name="frame_no" value="<?php echo $this->input->get('frame_no'); ?>"/></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_create_date') ?></td>
            <td><input type="text" placeholder="dd-mm-yyyy" class="date" readonly="readonly" name="CreateFrom" value="<?PHP echo $this->input->get('CreateFrom') ?>" /></td>
            <td>to</td>
            <td><input type="text" placeholder="dd-mm-yyyy" class="date" readonly="readonly" name="CreateTo" value="<?PHP echo $this->input->get('CreateTo') ?>" /></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_repair_date') ?></td>
            <td><input type="text" placeholder="dd-mm-yyyy" class="date" readonly="readonly" name="RepairFrom" value="<?PHP echo $this->input->get('RepairFrom') ?>" /></td>
            <td>to</td>
            <td><input type="text" placeholder="dd-mm-yyyy" class="date" readonly="readonly" name="RepairTo" value="<?PHP echo $this->input->get('RepairTo') ?>" /></td>
        </tr>
        <tr>
            <td><?PHP echo lang('manage_status') ?></td>
            <td>
                <select name="status">
                    <?php echo $statuses; ?>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="text" placeholder="yyyy/mm/dd" class="date hidden" readonly="readonly" name="dummy" hidden disabled /></td>
            <!--needs dummy for bug-->
        </tr>
    </table>
    <div class="table middle">
        <input type="submit" class="blue_back button search_btn" value="<?php echo lang('manage_search'); ?>" />
        <button type="button" class="blue_back button" id="export"><?php echo lang('manage_export'); ?></button>
        <input type="reset" class="blue_back button" value="<?php echo lang('manage_clear'); ?>">
    </div>
<!--    <div class="table">
        <div class="row">
            <div class="cell">
                <input type="submit" class="blue_back button search_btn" value="<?php echo lang('manage_search'); ?>" />
            </div>
            <div class="cell">
                <button type="button" class="blue_back button"><?php echo lang('manage_export'); ?></button>
            </div>
            <div class="cell">
                <button type="button" class="blue_back button"><?php echo lang('manage_core_in'); ?></button>
            </div>
            <div class="cell">
                <input type="reset" class="blue_back button" value="<?php echo lang('manage_cancel'); ?>">
            </div>
            <div class="cell" style="width: 35%;">
                <select name="status">
                        <?php echo $statuses; ?>
                </select>
            </div>
        </div>
    </div>-->
<!--</form>-->
<?php if (!isset($records) OR empty($records)) {
	echo "<h1 class='table middle'>NO RECORDS FOUND!</h1>";
	goto end;
} ?>
<div class="table middle">
	<div class="row"> <!-- PINK COLOR ROW class="pink" -->
		<div class="head">Mark<br/><input id="mark" type="checkbox"></div>
		<div class="head"><?PHP echo lang('manage_create_date') ?></div>
		<div class="head">ROS No.</div>
                <div class="head"><?PHP echo lang('manage_dealer') ?></div>
		<div class="head"><?PHP echo lang('manage_service_dealer') ?></div>
		<div class="head"><?PHP echo lang('manage_car_maker') ?></div>
                <div class="head"><?PHP echo lang('manage_car_model') ?></div>
                <div class="head"><?PHP echo lang('manage_warranty') ?></div>
                <div class="head"><?PHP echo lang('manage_part_type') ?></div>
		<div class="head"><?PHP echo lang('manage_part_no') ?></div>
		<div class="head">Approve Date</div>
		<div class="head">Delivery</div>
		<div class="head">Core</div>
		<div class="head"><?PHP echo lang('manage_status') ?></div>
	</div>

	<?php foreach ($records as $key => $row) { ?>
		<div class="row">
                    <div class="cell center"><input class="mark" type="checkbox" name="RosCheck[]" value="<?php echo isset($row['raw_ros'])?$row['raw_ros']:""; ?>"></div>
			<div class="cell center"><?php echo isset($row['created_time'])?date("d/m/Y H:i",strtotime($row['created_time'])):""; ?></div>
			<div class="cell center"><?php echo isset($row['ros_no'])?$row['ros_no']:""; ?></div>
            <div class="cell"><?php echo isset($row["dealer_".lang("manage_dealer_name")])?$row["dealer_".lang("manage_dealer_name")]:$row[lang("manage_sd_name")]; ?></div>
			<div class="cell"><?php echo isset($row[lang("manage_sd_name")])?$row[lang("manage_sd_name")]:""; ?></div>
			<div class="cell"><?php echo isset($row[lang("manage_maker_name")])?$row[lang("manage_maker_name")]:""; ?></div>
            <div class="cell"><?php echo isset($row['car_model'])?$row['car_model']:""; ?></div>
            <div class="cell"><?php echo isset($row['warranty'])?strtoupper($row['warranty']):""; ?></div>
            <div class="cell"><?php echo isset($row['part_type'])?$row['part_type']:""; ?></div>
			<div class="cell"> <?php echo isset($row['part_no'])?$row['part_no']:""; ?> </div>
			<div class="cell center"><?php echo isset($row['ApproveDate'])?date("d/m/Y H:i",strtotime($row['ApproveDate'])):""; ?></div>
			<div class="cell center"><?php echo isset($row['Delivery'])?date("d/m/Y H:i",strtotime($row['Delivery'])):""; ?></div>
			<div class="cell"><?php echo isset($row['Core'])?date("d/m/Y H:i",strtotime($row['Core'])):""; ?></div>
            <div class="cell <?php echo isset($row['status'])?str_replace(" ", "_", $row['status']):""; ?>"><?php echo isset($row['status'])?$row['status']:""; ?></div>
		</div>
	<?php } ?>
</form>
	<?php echo $this->pagination->create_links(); ?>
	<!-- <div class="row">
		<div class="cell center"><input class="mark" type="checkbox"></div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">TPB-003-14</div>
		<div class="cell">Thai Jaroen</div>
		<div class="cell">TOYOTA</div>
		<div class="cell">095000-8290</div>
		<div class="cell center">-</div>
		<div class="cell center">-</div>
		<div class="cell"></div>
		<div class="cell">Request</div>
	</div>
	<div class="row">
		<div class="cell center"><input class="mark" type="checkbox"></div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">TPB-003-14</div>
		<div class="cell"></div>
		<div class="cell">TOYOTA</div>
		<div class="cell">095000-8290</div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">-</div>
		<div class="cell"></div>
		<div class="cell">Approval</div>
	</div>
	<div class="row">
		<div class="cell center"><input class="mark" type="checkbox"></div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">TPB-003-14</div>
		<div class="cell"></div>
		<div class="cell">TOYOTA</div>
		<div class="cell">095000-8290</div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">12/16/2014</div>
		<div class="cell"></div>
		<div class="cell">Delivery</div>
	</div>
	<div class="row">
		<div class="cell center"><input class="mark" type="checkbox"></div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">TPB-003-14</div>
		<div class="cell"></div>
		<div class="cell">TOYOTA</div>
		<div class="cell">095000-8290</div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">12/16/2014</div>
		<div class="cell">12/16/2014</div>
		<div class="cell">Core return</div>
	</div>
	<div class="row">
		<div class="cell center"><input class="mark" type="checkbox"></div>
		<div class="cell center">10/16/2014</div>
		<div class="cell center">TPB-003-14</div>
		<div class="cell"></div>
		<div class="cell">TOYOTA</div>
		<div class="cell">095000-8290</div>
		<div class="cell center">-</div>
		<div class="cell center">-</div>
		<div class="cell">-</div>
		<div class="cell">Cancel</div>
	</div> -->
</div>
<?php end: ?>
<script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
<script src="<?php echo base_url(); ?>application/assets/js/jquery-ui.min.js"></script>
<script type="text/javascript">
    $(function(){
        var _timer;
        _timer = setTimeout(function(){location.reload(true);},60000);
        $("#auto_refresh").on("change", function(){
            var _me = $(this);
            if(_me.val()=="on"){
                clearTimeout(_timer);
                _timer = setTimeout(function(){location.reload(true);},60000);
            } else {
                clearTimeout(_timer);
            }
        });
    });
    $('select[name="CarMaker"]').on('change', function(){
        $.ajax({
            url: "<?php echo base_url(); ?>index.php/manage/getsomedealers",
            type: "POST",
            data: "CarMaker=" + $('select[name="CarMaker"]').val(),
            dataType: "json",
            async: false,
            success: function(data){
                    //console.log(data);
                    if (data.code == "200") {
                        $('select[name="DealerName"]').html(data.message);
                    }
                    else {
                        $('select[name="DealerName"]').html("<option value=''>All</option>");
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
    })
	$(function(){
		var checked = 0;
		$('#mark').on('click',function(){
			// $(this).prop("indeterminate",true);
			var parent = $(this);
			$('.mark').prop("checked",parent.prop("checked"));
			checked = parent.prop("checked")?6:0;
		});

		$('.mark').on('change',function(){
			checked = $(this).prop("checked")?(checked + 1):(checked - 1);
			setParent();
		});
		function setParent(){
			if (checked == 6) {
				$("#mark").prop("indeterminate",false);
				$("#mark").prop("checked",true);
			} else if(checked == 0){
				$("#mark").prop("indeterminate",false);
				$("#mark").prop("checked",false);
			} else{
				$("#mark").prop("indeterminate",true);
			}
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
                });
                
                $('#export').click(function(){
                    var form = $("#create_frm");
                    var data = form.serialize();
                    window.open("<?php echo base_url(); ?>index.php/excel/filtered/?" + data);
                })
	});
</script>