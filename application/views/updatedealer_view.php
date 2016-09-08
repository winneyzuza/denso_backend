<html>
    <head>
        <title>Update Dealer</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Update Dealer</h1>
        <?php
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <form action="<?php echo base_url();?>index.php/update/dealer/<?php echo $this->uri->segment(3); ?>" method="post">
            <table>
                <tr>
                    <td>Dealer ID</td>
                    <td><?php echo $DealerID; ?></td>
                </tr>
                <tr>
                    <td>Car Maker</td>
                    <td>
                        <select name="MakerID" id="maker">
                            <option value="">Please Select Maker</option>
                            <?php
                                if($makers){
                                    foreach ($makers as $value) {
                                        if($value['maker_id'] == $MakerID)
                                            echo "<option value='".$value['maker_id']."' ".set_select('MakerID', $value['maker_id'])." selected>".$value['maker_th']."</option>";
                                        else
                                            echo "<option value='".$value['maker_id']."' ".set_select('MakerID', $value['maker_id']).">".$value['maker_th']."</option>";
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Region</td>
                    <td>
                        <select name="Region">
                            <option value="">Please Select Region</option>
                            <?php
                                if($region){
                                    foreach ($region as $value) {
                                        if($value['region_code'] == $Region)
                                            echo "<option value='".$value['region_code']."' ".set_select('Region', $value['region_code'])." selected>".$value['region_name']."</option>";
                                        else
                                            echo "<option value='".$value['region_code']."' ".set_select('Region', $value['region_code']).">".$value['region_name']."</option>";
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Name (English)</td>
                    <td><input type="text" name="NameEnglish" value="<?php echo set_value('NameEnglish', $NameEnglish); ?>" /></td>
                </tr>
                <tr>
                    <td>Name (Thai)</td>
                    <td><input type="text" name="NameThai" value="<?php echo set_value('NameThai', $NameThai); ?>" /></td>
                </tr>
                <tr>
                    <td>Location (English)</td>
                    <td><input type="text" name="LocationEnglish" value="<?php echo set_value('LocationEnglish', $LocationEnglish); ?>" /></td>
                </tr>
                <tr>
                    <td>Location (Thai)</td>
                    <td><input type="text" name="LocationThai" value="<?php echo set_value('LocationThai', $LocationThai); ?>" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea name="Address"><?php echo set_value('Address', $Address); ?></textarea></td>
                </tr>
                <tr>
                    <td>Primary Phone</td>
                    <td><input type="text" name="PrimaryPhone" value="<?php echo set_value('PrimaryPhone', $PrimaryPhone); ?>" /></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="Phone" value="<?php echo set_value('Phone', $Phone); ?>" /></td>
                </tr>
                <tr>
                    <td>Fax</td>
                    <td><input type="text" name="Fax" value="<?php echo set_value('Fax', $Fax); ?>" /></td>
                </tr>
            </table>
            <br/>
            <button type="submit" class="button blue_back">Update</button>
            <button type="reset" class="button blue_back">Clear</button>
        </form>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
</html>