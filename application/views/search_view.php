<html>
    <head>
        <title>Search</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Search</h1>
        <?PHP
            if(validation_errors())
                echo "<script>window.onload = function(){alert('".validation_errors()."');}</script>";
        ?>
        <form action="<?PHP echo base_url();?>index.php/search/searchdata" method="post">
            <table>
                <tr>
                    <td>Search for</td>
                    <td><input type="text" name="Name" value="<?php echo set_value('name'); ?>" /></td>
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
        </form>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
</html>