<html>
    <head>
        <title>Search Compressor</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
        <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
        <script>
            $(document).on('change', '#CarMaker', function(){
                $("#CarModel").html("<option selected disabled>Select a Car Maker first.</option>");
                $("#EngineModel").html("<option selected disabled>Select an Car Model first.</option>");
                $("#results").html('');
                $.ajax({
                    url:        '<?PHP echo base_url(); ?>index.php/search/fetchccarmodel',
                    data:       {CarMaker: this.value},
                    type:       'POST',
                    dataType:   'json',
                })
                .done(function(data){
                    $("#CarModel").html("<option selected disabled>Select a Car Model</option>");
                    $.each(data, function(key, value){
                        $("#CarModel").append("<option value='" + value.car_model + "'>" + value.car_model + "</option>");
                    });
                })
            });

            $(document).on('change', '#CarModel', function(){
                $("#results").html('');
                $.ajax({
                    url:        '<?PHP echo base_url(); ?>index.php/search/fetchcenginemodel',
                    data:       {CarModel: this.value, CarMaker: $('#CarMaker').val()},
                    type:       'POST',
                    dataType:   'json',
                })
                .done(function(data){
                    $("#EngineModel").html("<option selected disabled>Select an Engine Model</option>");
                    $.each(data, function(key, value){
                        $("#EngineModel").append("<option value='" + value.engine_model + "'>" + value.engine_model + "</option>");
                    });
                })
            });

            $(document).on('change', '#EngineModel', function(){
                $.ajax({
                    url:        '<?PHP echo base_url(); ?>index.php/search/fetchcresults',
                    data:       {EngineModel: this.value, CarModel: $('#CarModel').val(), CarMaker: $('#CarMaker').val()},
                    type:       'POST',
                    dataType:   'json',
                })
                .done(function(data){
                    var temp = data;
                    var results = "<table id='recent_data'><tr><th>ID</th><th>Part Code</th><th>Car Maker</th><th>Car Model</th><th>Engine Model</th><th>Part Name</th><th>Car Maker P/N</th><th>Exchange P/N</th><th>Start</th><th>Finish</th></tr>";
                    $.each(data.result, function(key, value){
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/compressor/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.part_code + "</td>\n\
                            <td>" + $('#CarMaker option:selected').text() + "</td>\n\
                            <td>" + $('#CarModel').val() + "</td>\n\
                            <td>" + $('#EngineModel').val() + "</td>\n\
                            <td>" + value.part_name + "</td>\n\
                            <td>" + value.car_maker_PN + "</td>\n\
                            <td>" + value.exchange_PN + "</td>\n\
                            <td>" + value.start + "</td>\n\
                            <td>" + value.finish + "</td>\n\
                        </tr>";
                    });
                    results += "</table>";
                    $("#results").html("Total rows: " + data.total + "<br /><div id='pagination-div-id'>" + data.links + "</div>");
                    $("#results").append(results);
                })
            });
            
            $(document).on('click', '#pagination-div-id a', function(){
                $("#results").html('');
                $.ajax({
                    type: "POST",
                    dataType: 'json',
                    url: $(this).attr("href"),
                    data: {EngineModel: $('#EngineModel').val(), CarModel: $('#CarModel').val(), CarMaker: $('#CarMaker').val()},
                })
                .done(function(data){
                    var results = "<table><tr><th>ID</th><th>Part Code</th><th>Car Maker</th><th>Car Model</th><th>Engine Model</th><th>Part Name</th><th>Car Maker P/N</th><th>Exchange P/N</th><th>Start</th><th>Finish</th></tr>";
                    $.each(data.result, function(key, value){
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/compressor/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.part_code + "</td>\n\
                            <td>" + $('#CarMaker option:selected').text() + "</td>\n\
                            <td>" + $('#CarModel').val() + "</td>\n\
                            <td>" + $('#EngineModel').val() + "</td>\n\
                            <td>" + value.part_name + "</td>\n\
                            <td>" + value.car_maker_PN + "</td>\n\
                            <td>" + value.exchange_PN + "</td>\n\
                            <td>" + value.start + "</td>\n\
                            <td>" + value.finish + "</td>\n\
                        </tr>";
                    });
                    results += "</table>";
                    $("#results").html("Total rows: " + data.total + "<br /><div id='pagination-div-id'>" + data.links + "</div>");
                    $("#results").append(results);
                })
                return false;
            });
        </script>
    </head>
    <body>
        <h1>Search Compressor</h1>
        <?PHP
            $this->db->select('maker_en, maker_id');
            $this->db->order_by('maker_en', 'asc');
            $raw = $this->db->get('car_makers')->result_array();
//            print_r($raw);
            $CarMaker = '<option selected disabled>Please select Car Maker</option>';
            foreach ($raw as $value) {
                $CarMaker .= "<option value='".$value['maker_id']."'>".$value['maker_en']."</option>";
            }
        ?>
        <table>
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
                <td>
                    <select name="CarModel" id="CarModel">
                        <option selected disabled>Select Car Maker first.</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Engine Model</td>
                <td>
                    <select name="EngineModel" id="EngineModel">
                        <option selected disabled>Select Car Model first.</option>
                    </select>
                </td>
            </tr>
        </table>
        <br/>
        <span id="results"></span>
    </body>
</html>