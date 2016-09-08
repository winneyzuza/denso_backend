<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
<script>
    $(document).ready(function(){
        $('input').attr('disabled', true);
    })
</script>
<style>
    .fixedfont{ font-size: 10pt;}
    .alignright { text-align: right; }
    .bold { font-weight: bold; }
    .borderdottedright{
        border-right-style: dotted;
        border-width: 1px;
    }
    .borderdottedtop{
        border-top-style: dotted;
        border-width: 1px;
    }
    .bordersolid{
        border-style: solid !important;
        border-width: 1px;
    }
    .bordersolidleft { border-left-style: solid; }
    .bordersolidright { border-right-style: solid; }
    .bordersolidtop { border-top-style: solid; }
    .bordersolidbottom { border-bottom-style: solid; }
    .center { text-align: center; }
    .denso {
        color: red;
        float: right;
    }
    .floatleft { float: left; }
    .outer { width: 800px; }
    .formtitle{ display: block;vertical-align: bottom; height: 40px; padding-bottom: 12px;}
    table, td {
        border-collapse: collapse;
        border-width: 1px;
    }
    .bottombox{
        font-size: 8.5pt;
        font-style: italic;
    }
</style>
<div>
    <div class="outer center formtitle fixedfont" >
        <!--span class="bordersolid floatleft" style="padding: 10px;">โลโก้</span-->
        <span style="display: inline-block; vertical-align: middle;"><h3>แบบฟอร์มขอแลกเปลี่ยนอัลเทอร์เนเตอร์สำหรับ (TOYOTA)</h3></span>
        <span class="denso"><img src="<?php echo base_url('application/assets/images/logo.jpg');?>" alt="DENSO" title="DENSO" height="40px" style="vertical-align:middle;"></span>
    </div>
    <table class="bordersolid outer fixedfont">
        <tr>
            <td colspan="2" class="bold">ชื่อศูนย์บริการเด็นโซ่</td>
<!--            <td colspan="2" class="bordersolidright"><?php echo isset($sd_info[lang('create_sd_name')])?$sd_info[lang('create_sd_name')]:'____________________'; ?></td>-->
            <td colspan="2" class="bordersolidright"><?php echo isset($sd_info['name_th'])?$sd_info['name_th']:'____________________'; ?></td>
            <td colspan="3" class="bordersolidleft bold">ชื่อตัวแทนจำหน่ายรถยนต์ (TOYOTA)</td>
            <td ><?php echo isset($dealer_info['name_th'])?$dealer_info['name_th']:'__________' ; ?></td>
            <td rowspan="5" class="bordersolid center" style="width: 124px;">ตราประทับ</td>
        </tr>
        <tr>
            <td>ที่อยู่</td>
            <td colspan="3" class="bordersolidright"><?php echo isset($sd_info['address'])?$sd_info['address']:'__________' ?></td>
            <td>สาขา</td>
            <td>__________</td>
            <td>จังหวัด</td>
            <td><?php echo isset($dealer_info['location_th'])?$dealer_info['location_th']:'__________' ?></td>
        </tr>
        <tr>
            <td>เบอร์โทรศัพท์</td>
            <td><?php echo isset($sd_info['primary_phone'])?$sd_info['primary_phone']:'__________' ?></td>
            <td>โทรสาร</td>
            <td class="bordersolidright"><?php echo isset($sd_info['fax'])?$sd_info['fax']:'__________' ?></td>
            <td>เบอร์โทรศัพท์</td>
            <td><?php echo isset($dealer_info['primary_phone'])?$dealer_info['primary_phone']:'__________' ?></td>
            <td>โทรสาร</td>
            <td class="bordersolidright"><?php echo isset($dealer_info['fax'])?$dealer_info['fax']:'__________' ?></td>
        </tr>
        <tr>
            <td rowspan="3" colspan="2" class="bold">ROS NO.</td>
            <td rowspan="3" colspan="2" class="bordersolidright"><?php echo ($this->input->get('ros_no'))?$this->input->get('ros_no'):'____________________' ?></td>
            <td colspan="2">ชื่อผู้เขียนแบบฟอร์ม</td>
            <td colspan="2">____________________</td>
        </tr>
        <tr>
            <td colspan="2">ชื่อผู้อนุมัติ</td>
            <td colspan="2">____________________</td>
        </tr>
        <tr>
            <td colspan="2">วันที่อนุมัติ</td>
            <td colspan="2">____________________</td>
            <td></td>
        </tr>
    </table>
    <br /><br />
    <table class="bordersolid outer fixedfont">
        <tr>
            <td class="bordersolid">
                รับประกัน
               <input type="checkbox" <?PHP if($this->input->get('warranty') == 'in') echo "checked"; ?>/>
                ใน
                <input type="checkbox" <?PHP if($this->input->get('warranty') == 'out') echo "checked"; ?>/>
                นอก
            </td>
            <td>
                ชิ้นส่วนที่เป็นต้นเหตุของปัญหา
                <input type="checkbox" <?PHP if($this->input->get('part_id')) echo "checked"; ?>/>
                อัลเทอร์เนเตอร์
                
            </td>
        </tr>
    </table>
    <br /><br />
    <table class="bordersolid outer fixedfont">
        <tr>
            <td colspan="2" class="bordersolid bold center">ข้อมูลรถยนต์</td>
            <td colspan="7"></td>
        </tr>
        <tr>
            <td>รุ่นรถยนต์</td>
            <td><?php echo ($this->input->get('car_model'))?$this->input->get('car_model'):'__________' ?></td>
            <td>รหัสเครื่องยนต์</td>
            <td><?php echo ($this->input->get('engine_model'))?$this->input->get('engine_model'):'__________' ?></td>
            <td>หมายเลขตัวถัง</td>
            <td><?php echo ($this->input->get('frame_no'))?$this->input->get('frame_no'):'__________' ?></td>
            <td colspan="2">หมายเลขเครื่องยนต์</td>
            <td><?php echo ($this->input->get('engine_no'))?$this->input->get('engine_no'):'__________' ?></td>
        </tr>
        <tr>
            <td>วันที่ออกรถ</td>
            <td><?php echo ($this->input->get('delivery_date'))?$this->input->get('delivery_date'):'__________' ?></td>
            <td>วันที่ซ่อม</td>
            <td><?php echo ($this->input->get('repair_date'))?$this->input->get('repair_date'):'__________' ?></td>
            <td>กิโลเมตรที่ใช้งาน</td>
            <td><?php echo ($this->input->get('mileage'))?$this->input->get('mileage'):'__________' ?></td>
            <td>km</td>
            <td>ทะเบียนรถ</td>
            <td><?php echo ($this->input->get('plate_no'))?$this->input->get('plate_no'):'__________' ?></td>
        </tr>
    </table>
    <br /><br />
    <table class="bordersolid outer fixedfont">
        <tr>
            <td colspan="4"  class="bordersolid">
                อะไหล่ที่ขอแลกเปลี่ยน
                <input type="checkbox" <?PHP if($this->input->get('part_id')) echo "checked"; ?>/>
                &nbsp;อัลเทอร์เนเตอร์
            </td>
        </tr>
        <tr>
            <td colspan="4" class="bold center bordersolid">อะไหล่ที่ขอแลกเปลี่ยน (ข้อมูลอะไหล่เสีย)</td>
            
        </tr>
        <tr class="bordersolid">
            <td colspan="4" class="bordersolid" width="15%"><b>อัลเทอร์เนเตอร์</b> &nbsp;&nbsp;จำนวน&nbsp;&nbsp;&nbsp;
                <?php echo ($this->input->get('part_id'))?'1':'__________' ?>&nbsp;&nbsp;ตัว</td>
        </tr>
        <tr class="bordersolid">
            <td colspan="2">หมายเลขอะไหล่ &nbsp;&nbsp;<?php echo ($this->input->get('part_failure_pn') && (intval($this->input->get('part_id')) == 4))?$this->input->get('part_failure_pn'):'__________' ?></td>
            <td colspan="2">หมายเลขการผลิต &nbsp;&nbsp;<?php echo ($this->input->get('failure_sn_1') && (intval($this->input->get('part_id')) == 4))?$this->input->get('failure_sn_1'):'__________' ?></td>
            
        </tr>
        
    </table>
    <br /><br />
    <table class="outer fixedfont">
        <tr>
            <td>
                <table class="bordersolid fixedfont" width ="150px">
                    <tr>
                        <td colspan="3" class="bold bordersolid">รายละเอียดที่ลูกค้าแจ้ง</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><input type="checkbox" <?PHP if($this->input->get('car_problem') == '32') echo "checked"; ?>/></td>
                        <td>ชุดพูลเล่ย์ตัง</td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>2</td>
                        <td><input type="checkbox" <?PHP if($this->input->get('car_problem') == '33') echo "checked"; ?>/></td>
                        <td>ภายในดัง</td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>3</td>
                        <td><input type="checkbox" <?PHP if($this->input->get('car_problem') == '34') echo "checked"; ?>/></td>
                        <td>ไม่ชาร์จ</td> 
                    </tr>
                    <tr class="borderdottedtop">
                        <td>4</td>
                        <td><input type="checkbox" <?PHP if($this->input->get('car_problem') == '35') echo "checked"; ?>/></td>
                        <td>กระแสไฟเข้าออกน้อย</td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>5</td>
                        <td><input type="checkbox" <?PHP if($this->input->get('car_problem') == '36') echo "checked"; ?>/></td>
                        <td>ไฟรูปแบตโชว์</td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>6</td>
                        <td><input type="checkbox" <?PHP if($this->input->get('car_problem') == '37') echo "checked"; ?>/></td>
                        <td>อื่นๆ <?PHP echo $this->input->get('car_problem_other'); ?></td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>7</td>
                        <td><input type="checkbox" /></td>
                        <td></td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>8</td>
                        <td><input type="checkbox" /></td>
                        <td></td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>9</td>
                        <td><input type="checkbox" /></td>
                        <td></td>
                    </tr>
                    <tr class="borderdottedtop">
                        <td>10</td>
                        <td><input type="checkbox" /></td>
                        <td></td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table class="fixedfont" style="width: 600px; float: right;">
                    <tr>
                        <td colspan="6" class="bold bordersolid">รายละเอียดอื่นๆ</td>
                    </tr>
                    <tr>
                        <td colspan="6"class="bordersolid">1 แรงดันไฟฟ้าที่วัดได้ &nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($this->input->get('compressor_repair_id'))?$this->input->get('compressor_repair_id'):'__________' ?></td>
                        
                    </tr>
                    <tr class="bordersolid">
                        <td colspan="2">2 ปัญหาครั้งที่ </td>
                        <td>
                            <input type="checkbox" <?PHP if($this->input->get('compressor_problem_id') == 'CP001') echo "checked"; ?> />
                            1
                        </td>
                        <td>
                            <input type="checkbox" <?PHP if($this->input->get('compressor_problem_id') == 'CP002') echo "checked"; ?> />
                            2
                        </td>
                        <td>
                            <input type="checkbox" <?PHP if($this->input->get('compressor_problem_id') == 'CP003') echo "checked"; ?> />
                            3
                        </td>
                        <td>
                            <input type="checkbox" <?PHP if($this->input->get('compressor_problem_id') == 'CP004') echo "checked"; ?> />
                            4
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6"> &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6" style=" font-weight: bolder;"><u>ข้อควรระวัง</u></td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            1. ถอดขั้วลบแบตเตอรี่ออกทุกครั้งเมื่อทำการถอดเปลี่ยน อัลเทอร์เนเตอร์<br/>
                            2. เมื่อทำการติดตั้งอัลเทอร์เนเตอร์เสร็จเรียบร้อยแล้ว ให้ตรวจจเช็คขั้วสายไฟที่ต่อเข้าตัวอัลเทอร์เนเตอร์ให้แน่นเรียบร้อยทุกขั้ว<br/>
                            3. ตั้งค่าความตึงของสายพานตามค่ามาตรฐานที่กำหนด
                        </td>
                    </tr>
                    
                </table>
            </td>
        </tr>
    </table>
    <br /><br />
    <div class="outer">
        <span class="bordersolid bold fixedfont">
            สำหรับศูนย์บริการเด็นโซ่ และบริษัทธนศิริ ดีเซล
        </span>
    </div>
    <br />
    
    <table class="outer bottombox">
        <tr>
            <td class="alignright bordersolidtop bordersolidleft">ROS จากตัวแทนฯ -></td>
            <td class="bordersolidtop bordersolidright">ศูนย์บริการเด็นโซ่</td>
            <td rowspan="3">=></td>
            <td class="alignright bordersolidtop bordersolidleft">ROS จากศูนย์บริการเด็นโซ่ -></td>
            <td class="bordersolidtop bordersolidright">บ. ธนศิริ</td>
            <td rowspan="3">=></td>
            <td class="alignright bordersolidtop bordersolidleft">อะไหล่แลกเปลี่ยนจากศูนย์บริการเด็นโซ่ -></td>
            <td class="bordersolidtop bordersolidright">ตัวแทนฯ</td>
        </tr>
        <tr>
            <td colspan="2" class="bordersolidleft bordersolidtop bordersolidright center">วันที่ศูนย์บริการเด็นโซ่ส่งคำร้องการแลกเปลี่ยน</td>
            <td colspan="2" class="bordersolidleft bordersolidtop bordersolidright center">วันที่ บ. ธนศิริได้รับแบบฟอร์มและอนุมัติ</td>
            <td colspan="2" class="bordersolidleft bordersolidtop bordersolidright center">วันที่ศูนย์บริการเด็นโซ่ส่งอะไหล่แลกเปลี่ยนไปยังตัวแทน</td>
        </tr>
        <tr>
            <td class="center bordersolidleft bordersolidbottom"><?php echo isset($Request)?date('d/m/Y', strtotime($Request)):'__________' ?></td>
            <td class="bordersolidbottom bordersolidright"><?php echo isset($Request)?date('H:i', strtotime($Request)):'__________' ?></td>
            <td class="center bordersolidleft bordersolidbottom"><?php echo isset($Approved)?date('d/m/Y', strtotime($Approved)):'__________' ?></td>
            <td class="bordersolidbottom bordersolidright"><?php echo isset($Approved)?date('H:i', strtotime($Approved)):'__________' ?></td>
            <td class="center bordersolidleft bordersolidbottom"><?php echo isset($Delivery)?date('d/m/Y', strtotime($Delivery)):'__________' ?></td>
            <td class="bordersolidbottom bordersolidright"><?php echo isset($Delivery)?date('H:i', strtotime($Delivery)):'__________' ?></td>
        </tr>
        <tr class="center">
            <td colspan="2"></td>
            <td></td>
            <td colspan="2"></td>
            <td></td>
            <td class="bordersolidleft">หมายเลขอะไหล่ที่นำไปและเปลี่ยน</td>
            <td class="bordersolidright">(หมายเลขการผลิต)</td>
        </tr>
        
        <tr>
            <td class="alignright bordersolidtop bordersolidleft">อะไหล่จากศูนย์บริการเด็นโซ่ -></td>
            <td class="bordersolidtop bordersolidright">บ. ธนศิริดีเซล</td>
            <td rowspan="3"><=</td>
            <td class="alignright bordersolidtop bordersolidleft">อะไหล่จากตัวแทนฯ -></td>
            <td class="bordersolidtop bordersolidright">ศูนย์บริการเด็นโซ่</td>
            <td rowspan="3"><=</td>
            <td rowspan="3" class="alignright bordersolidleft center bordersolidbottom">____________________</td>
            <td rowspan="3" class="bordersolidright center bordersolidbottom">(__________)</td>
        </tr>
        <tr>
            <td colspan="2" class="bordersolidleft bordersolidtop bordersolidright center">วันที่ รับอะไหล่จากศูนย์บริการเด็นโซ่</td>
            <td colspan="2" class="bordersolidleft bordersolidtop bordersolidright center">วันที่ รับอะไหล่จากตัวแทน</td>
            
        </tr>
        <tr>
            <td class="center bordersolidleft bordersolidbottom"><?php echo isset($Complete)?date('d/m/Y', strtotime($Complete)):'__________' ?></td>
            <td class="bordersolidbottom bordersolidright"><?php echo isset($Complete)?date('H:i', strtotime($Complete)):'__________' ?></td>
            <td class="center bordersolidleft bordersolidbottom"><?php echo isset($CoreReturn)?date('d/m/Y', strtotime($CoreReturn)):'__________' ?></td>
            <td class="bordersolidbottom bordersolidright"><?php echo isset($CoreReturn)?date('H:i', strtotime($CoreReturn)):'__________' ?></td>
            
        </tr>
    </table>
</div>