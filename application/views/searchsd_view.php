<html>
    <head>
        <title>Service Dealer Result</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Service Dealer Result</h1>
        <form onsubmit="return false">
        <table>
            <tr>
                <td>
                    Search for <input type="text" name="ServiceDealer" id="ServiceDealer"/>
                </td>
            </tr>
        </table>
            <br/>
            <br/>
            <button type="submit" id="submit" class="button blue_back">Search</button>
        </form>
        <br />
        <span id="results"></span>
    </body>
    <?php $mapUrl = (base_url()."index.php/update/").($this->input->get("map")=="parts"?("partmapping/"):("mapping/")); ?>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
    <script>
        $(document).on('click', '#submit', function(){
            $.ajax({
                url:        '<?PHP echo base_url(); ?>index.php/search/fetchsd',
                data:       {ServiceDealer: $('#ServiceDealer').val()},
                type:       'POST',
                dataType:   'json',
            })
            .done(function(data){
                var temp = data;
                var results = "<table id='recent_data'><tr><th>ID</th><th>Service Dealer ID</th><th>Name (English)</th><th>Name (Thai)</th><th>Region Code</th><th>Service Dealer Class</th><th>Address</th><th>Primary Phone</th><th>Phone</th><th>Fax</th><th>Owner</th><th>Email</th></tr>";
                $.each(data.result, function(key, value){
                    results += "<tr>\n\
                        <td><a href='<?php echo $mapUrl; ?>" + value.id + "'>" + value.id + "</a></td>\n\
                        <td>" + value.sd_id + "</td>\n\
                        <td>" + value.name_eng + "</td>\n\
                        <td>" + value.name_th + "</td>\n\
                        <td>" + value.region_code + "</td>\n\
                        <td>" + value.sd_class + "</td>\n\
                        <td>" + value.address + "</td>\n\
                        <td>" + value.primary_phone + "</td>\n\
                        <td>" + value.phone + "</td>\n\
                        <td>" + value.fax + "</td>\n\
                        <td>" + value.owner + "</td>\n\
                        <td>" + value.email + "</td>\n\
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
                url: $(this).attr("href"),
                data:       {ServiceDealer: $('#ServiceDealer').val()},
                type:       'POST',
                dataType:   'json',
            })
            .done(function(data){
                var temp = data;
                var results = "<table id='recent_data'><tr><th>ID</th><th>Service Dealer ID</th><th>Name (English)</th><th>Name (Thai)</th><th>Region Code</th><th>Service Dealer Class</th><th>Address</th><th>Primary Phone</th><th>Phone</th><th>Fax</th><th>Owner</th><th>Email</th></tr>";
                $.each(data.result, function(key, value){
                    results += "<tr>\n\
                        <td><a href='<?php echo $mapUrl; ?>" + value.id + "'>" + value.id + "</a></td>\n\
                        <td>" + value.sd_id + "</td>\n\
                        <td>" + value.name_eng + "</td>\n\
                        <td>" + value.name_th + "</td>\n\
                        <td>" + value.region_code + "</td>\n\
                        <td>" + value.sd_class + "</td>\n\
                        <td>" + value.address + "</td>\n\
                        <td>" + value.primary_phone + "</td>\n\
                        <td>" + value.phone + "</td>\n\
                        <td>" + value.fax + "</td>\n\
                        <td>" + value.owner + "</td>\n\
                        <td>" + value.email + "</td>\n\
                    </tr>";
                });
                results += "</table>";
                $("#results").html("Total rows: " + data.total + "<br /><div id='pagination-div-id'>" + data.links + "</div>");
                $("#results").append(results);
            })
            return false;
        });
    </script>
</html>