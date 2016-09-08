<html>
    <head>
        <title>Add Pump Parts</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Add Pump Parts</h1>
        <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <?PHP
            $this->db->select('maker_en, maker_id');
            $this->db->order_by('maker_en', 'asc');
            $raw = $this->db->get('car_makers')->result_array();
//            print_r($raw);
            $CarMaker = '<option selected disabled>Please select Car Maker</option>';
            foreach ($raw as $value) {
                if(set_select('CarMaker', $value['maker_id']))
                    $CarMaker .= "<option value='".$value['maker_id']."' selected>".$value['maker_en']."</option>";
                else
                    $CarMaker .= "<option value='".$value['maker_id']."'>".$value['maker_en']."</option>";
            }
        ?>
        <form action="<?PHP echo base_url();?>index.php/add/pumpparts" method="post">
            <table>
                <tr>
                    <td>Part Code</td>
                    <td><input type="text" name="PartCode" value="<?php echo set_value('PartCode'); ?>" /></td>
                </tr>
                <tr>
                    <td>Car Maker</td>
                    <td>
                        <select name="CarMaker" id="CarMaker">
                            <?PHP echo $CarMaker; ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Car Model</td>
                    <td><input type="text" name="CarModel" value="<?php echo set_value('CarModel'); ?>" /></td>
                </tr>
                <tr>
                    <td>Engine Model</td>
                    <td><input type="text" name="EngineModel" value="<?php echo set_value('EngineModel'); ?>" /></td>
                </tr>
                <tr>
                    <td>Part Name</td>
                    <td><input type="text" name="PartName" value="<?php echo set_value('PartName'); ?>" /></td>
                </tr>
                <tr>
                    <td>Car Maker P/N</td>
                    <td><input type="text" name="CarMakerPN" value="<?php echo set_value('CarMakerPN'); ?>" /></td>
                </tr>
                <tr>
                    <td>Exchange P/N</td>
                    <td><input type="text" name="ExchangePN" value="<?php echo set_value('ExchangePN'); ?>" /></td>
                </tr>
                <tr>
                    <td>Start</td>
                    <td><input type="text" class="datepicker" name="Start" value="<?php echo set_value('Start'); ?>" readonly/></td>
                </tr>
                <tr>
                    <td>Finish</td>
                    <td><input type="text" class="datepicker" name="Finish" value="<?php echo set_value('Finish'); ?>" readonly/></td>
                </tr>
            </table>
            <br/>
            <button type="submit" class="button blue_back">Add</button>
            <button type="reset" class="button blue_back">Clear</button>
            <br/>
        </form>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-ui.min.js"></script>
    <script>
        $(function(){
            $('.datepicker').datepicker({
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
        })
    </script>
</html>