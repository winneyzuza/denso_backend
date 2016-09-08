<html>
    <head>
        <title>Add Service Dealer</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Add Service Dealer</h1>
        <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <form action="<?PHP echo base_url();?>index.php/servicedealer/add" method="post">
            <table>
                <tr>
                    <td>Name (English)</td>
                    <td><input type="text" name="NameEnglish" value="<?php echo set_value('NameEnglish'); ?>" /></td>
                </tr>
                <tr>
                    <td>Name (Thai)</td>
                    <td><input type="text" name="NameThai" value="<?php echo set_value('NameThai'); ?>" /></td>
                </tr>
                <tr>
                    <td>Region Code</td>
                    <td>
                        <select name="RegionCode">
                            <option value="">Please Select Region</option>
                            <?PHP
                                if($region){
                                    foreach ($region as $value) {
                                        echo "<option value='".$value['region_code']."' ".set_select('RegionCode', $value['region_code']).">".$value['region_name']."</option>";
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Service Dealer Class</td>
                    <td><input type="text" name="ServiceDealerClass" value="<?php echo set_value('ServiceDealerClass'); ?>" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea name="Address"><?php echo set_value('Address'); ?></textarea></td>
                </tr>
                <tr>
                    <td>PrimaryPhone</td>
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
                <tr>
                    <td>Owner</td>
                    <td><input type="text" name="Owner" value="<?php echo set_value('Owner'); ?>" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="Email" value="<?php echo set_value('Email'); ?>" /></td>
                </tr>
            </table>
            <br/>
            <button type="submit" class="button blue_back">Add</button>
            <button type="reset" class="button blue_back">Clear</button>
            <br/>
        </form>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
</html>