<head>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#breakup').on('click', function(){
                $.ajax({
                    url:        '<?php echo base_url(); ?>index.php/update/breakup',
                    data:       {taken: $('#taken').val(), sdid:'<?php echo $sd_info['sd_id'] ?>'},
                    type:       'POST',
                    dataType:   'json',
                })
                .done(function(data){
                    if(data.code == 0)
                        alert(data.message);
                    else
                        location.reload();
                })
            })
            $('#unite').on('click', function(){
                $.ajax({
                    url:        '<?php echo base_url(); ?>index.php/update/unite',
                    data:       {single: $('#single').val(), sdid:'<?php echo $sd_info['sd_id'] ?>'},
                    type:       'POST',
                    dataType:   'json',
                })
                .done(function(data){
                    if(data.code == 0)
                        alert(data.message);
                    else
                        location.reload();
                })
            })
        })
    </script>
</head>
<body>
    <h1>Mapping for Service Dealer</h1>
    <table id="recent_data">
        <tr>
            <th>ID</th>
            <th>Service Dealer ID</th>
            <th>Name (English)</th>
            <th>Name (Thai)</th>
            <th>Region Code</th>
            <th>Service Dealer Class</th>
            <th>Address</th>
            <th>Primary Phone</th>
            <th>Phone</th>
            <th>Fax</th>
            <th>Owner</th>
            <th>Email</th>
        </tr>
        <tr style="text-align: center;">
            <?php
                foreach ($sd_info as $key => $value) {
                    echo "<td>$value</td>";
                }
            ?>
        </tr>
    </table>
    Total Dealers: <?php echo count($complete); ?>
    <br/>
    <br/>
    <select onchange="changeMaker(this.value);">
        <?php echo $makers; ?>
    </select>
    <br/>
    <br/>
    <table style="width:100%;">
        <tr>
            <td>In Relationship</td>
            <td>Not In Relationship</td>
        </tr>
        <tr>
            <td>Total: <?php echo count($taken); ?></td>
            <td>Total: <?php echo count($single); ?></td>
        </tr>
        <tr>
            <td style="width:49%;">
                <select id="taken" size="10" multiple style="width:100%;">
                    <?php
                        foreach ($taken as $key => $value) {
                            echo "<option value='".$value['dealer_id']."'>".$value['name_eng']." (".$value['name_th'].")</option>";
                        }
                    ?>
                </select>
            </td>
            <td>
                <select id="single" size="10" multiple style="width:100%;">
                    <?php
                        foreach ($single as $key => $value) {
                            echo "<option value='".$value['dealer_id']."'>".$value['name_eng']." (".$value['name_th'].")</option>";
                        }
                    ?>
                </select>
            </td>
        </tr>
        <tr>
            <td><button id="breakup" class="button blue_back">Remove Relationship</button></td>
            <td><button id="unite" class="button blue_back">Add Relationship</button></td>
        </tr>
    </table>
</body>
<script type="text/javascript">
    function changeMaker(value){
        window.location.href=value;
    }
</script>