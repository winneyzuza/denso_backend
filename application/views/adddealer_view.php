<html>
    <head>
        <title>Add Dealer</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Add Dealer</h1>
        <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <form action="<?PHP echo base_url();?>index.php/dealer/add" method="post">
            <table>
                <tr>
                    <td>Car Maker</td>
                    <td>
                        <select name="MakerID" id="maker">
                            <option value="">Please Select Maker</option>
                            <?PHP
                                if($makers){
                                    foreach ($makers as $value) {
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
                            <?PHP
                                if($region){
                                    foreach ($region as $value) {
                                        echo "<option value='".$value['region_code']."' ".set_select('Region', $value['region_code']).">".$value['region_name']."</option>";
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Name (English)</td>
                    <td><input type="text" name="NameEnglish" value="<?php echo set_value('NameEnglish'); ?>" /></td>
                </tr>
                <tr>
                    <td>Name (Thai)</td>
                    <td><input type="text" name="NameThai" value="<?php echo set_value('NameThai'); ?>" /></td>
                </tr>
                <tr>
                    <td>Location (English)</td>
                    <td><input type="text" name="LocationEnglish" value="<?php echo set_value('LocationEnglish'); ?>" /></td>
                </tr>
                <tr>
                    <td>Location (Thai)</td>
                    <td><input type="text" name="LocationThai" value="<?php echo set_value('LocationThai'); ?>" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea name="Address"><?php echo set_value('Address'); ?></textarea></td>
                </tr>
                <tr>
                    <td>Primary Phone</td>
                    <td><input type="text" name="PrimaryPhone" value="<?php echo set_value('PrimaryPhone'); ?>" /></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="Phone" value="<?php echo set_value('Phone'); ?>" /></td>
                </tr>
                <tr>
                    <td>Fax</td>
                    <td><input type="text" name="Fax" value="<?php echo set_value('Fax'); ?>" /></td>
                </tr>
            </table>
            <br/>
            <button type="submit" class="button blue_back">Add</button>
            <button type="reset" class="button blue_back">Clear</button>
            <br/>
            <br/>
        </form>
        <div>
            <table id="recent_data">
                <tr>
                    <th>ID</th>
                    <th>Dealer ID</th>
                    <th>Name (English)</th>
                    <th>Name (Thai)</th>
                    <th>Car Maker</th>
                    <th>Location (English)</th>
                    <th>Location (Thai)</th>
                    <th>Region</th>
                    <th>Address</th>
                    <th>Primary Phone</th>
                    <th>Phone</th>
                    <th>Fax</th>
                </tr>
                <?PHP
                foreach($dealers as $k1 => $v1){
                    echo "<tr>";
                    foreach($v1 as $k2 => $v2){
                        echo "<td>".$v2."</td>";
                    }
                    echo "</tr>";
                }
                ?>
            </table>
        </div>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
</html>