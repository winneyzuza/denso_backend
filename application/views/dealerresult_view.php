<html>
    <head>
        <title>Dealer Result</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Dealer Result</h1>
        <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <form action="<?PHP echo base_url();?>index.php/search/searchdata/" method="post">
            <table>
                <tr>
                    <td>Search for</td>
                    <td><input type="text" name="Name" value="<?php echo $query; ?>" /></td>
                    <td> in </td>
                    <td>
                        <select name="Table">
                            <option value="Dealer" <?php echo set_select('table', 'Dealer', TRUE); ?>>Dealer</option>
                            <option value="ServiceDealer" <?php echo set_select('table', 'ServiceDealer'); ?>>Service Dealer</option>
                        </select>
                    </td>
                </tr>
            </table>
            <br/>
            <button type="submit" class="button blue_back">Search</button>
            <button type="reset" class="button blue_back">Clear</button>
            <br/>
            <br/>
        </form>
        <?PHP
            if(isset($noresults))
                echo "Invalid search or no results found.";
            if(isset($result)){
//                echo "<pre>";
//                print_r($result);
//                echo "</pre>";
                echo "Total number of results: ".$total."<br />";
                ?>
        <?PHP echo $this->pagination->create_links(); ?>
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
            foreach($result as $k1 => $v1){
                echo "<tr>";
                foreach($v1 as $k2 => $v2){
                    if($k2 == "ID")
                        echo "<td>".anchor("update/dealer/".$v2, $v2)."</td>";
                    else
                        echo "<td>".$v2."</td>";
                }
                echo "</tr>";
            }
            ?>
        </table>
        <?PHP
            }
            else
                echo "Invalid search or no results found.";
        ?>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>

</html>