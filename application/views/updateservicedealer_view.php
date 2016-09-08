<html>
    <head>
        <title>Update Service Dealer</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Update Service Dealer</h1>
        <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <form action="<?PHP echo base_url();?>index.php/update/servicedealer/<?PHP echo $this->uri->segment(3); ?>" method="post">
            <table>
                <tr>
                    <td>Service Dealer ID</td>
                    <td><?php echo $ServiceDealerID; ?></td>
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
                    <td>Region Code</td>
                    <td>
                        <select name="RegionCode">
                            <option value="">Please Select Region</option>
                            <?PHP
                                if($region){
                                    foreach ($region as $value) {
                                        if($value['region_code'] == $RegionCode)
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
                    <td>Service Dealer Class</td>
                    <td><input type="text" name="ServiceDealerClass" value="<?php echo set_value('ServiceDealerClass', $ServiceDealerClass); ?>" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea name="Address"><?php echo set_value('Address', $Address); ?></textarea></td>
                </tr>
                <tr>
                    <td>PrimaryPhone</td>
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
                <tr>
                    <td>Owner</td>
                    <td><input type="text" name="Owner" value="<?php echo set_value('Owner', $Owner); ?>" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="Email" value="<?php echo set_value('Email', $Email); ?>" /></td>
                </tr>
            </table>
            <br/>
            <button type="submit" class="button blue_back">Update</button>
            <button type="reset" class="button blue_back">Clear</button>
            <br/>   
        </form>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
</html>