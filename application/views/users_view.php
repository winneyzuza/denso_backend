<html>
    <head>
        <title>Search Users</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
    </head>
    <body>
        <h1>Search Users</h1>
        <form onsubmit="return false">
            <table>
                <tr>
                    <td>Username</td>
                    <td>
                        <input name="Username" id="Username">
                    </td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td>
                        <input name="FullName" id="FullName">
                    </td>
                </tr>
                <tr>
                    <td>Service Dealer</td>
                    <td>
                        <select name="ServiceDealer" id="ServiceDealer">
                            <option value="">All Service Dealers</option>
                            <?PHP
                                if(isset($sd)){
                                    foreach ($sd as $key => $value) {
                                        echo "<option value='".$value['sd_id']."'".set_select('ServiceDealer', $value['sd_id']).">".$value['name_eng']." (".$value['name_th'].")</option>";
                                    }
                                }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><button id="submit" class="button blue_back">Search</button></td>
                </tr>
            </table>
        </form>
        <br/>
        <span id="results"></span>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
    <script>
        $(document).on('click', '#submit', function(){
            $.ajax({
                url:        '<?PHP echo base_url(); ?>index.php/search/fetchusers',
                data:       {Username: $('#Username').val(), FullName: $('#FullName').val(), ServiceDealer: $('#ServiceDealer').val()},
                type:       'POST',
                dataType:   'json',
            })
            .done(function(data){
                var temp = data;
                var results = "<table id='recent_data'><tr><th>ID</th><th>Username</th><th>Full Name</th><th>Service Dealer (English)</th><th>Service Dealer (Thai)</th><th>User Group</th><th>Delete</th></tr>";
                $.each(data.result, function(key, value){
                    if(value.user_group == '1'){
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/users/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.username + "</td>\n\
                            <td>" + value.full_name + "</td>\n\
                            <td>" + value.name_eng + "</td>\n\
                            <td>" + value.name_th + "</td>\n\
                            <td>Service Dealer</td>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteuser/" + value.id + "/" + value.username + "' onclick='return confirm(\"Are you sure you want to delete " + value.username + "?\")'>Delete</a></td>\n\
                        </tr>";
                    }
                    else{
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/users/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.username + "</td>\n\
                            <td>" + value.full_name + "</td>\n\
                            <td>" + value.name_eng + "</td>\n\
                            <td>" + value.name_th + "</td>\n\
                            <td>Admin</td>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteuser/" + value.id + "/" + value.username + "' onclick='return confirm(\"Are you sure you want to delete " + value.username + "?\")'>Delete</a></td>\n\
                        </tr>";
                    }
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
                data:       {Username: $('#Username').val(), FullName: $('#FullName').val(), ServiceDealer: $('#ServiceDealer').val()},
                type:       'POST',
                dataType:   'json',
            })
            .done(function(data){
                var temp = data;
                var results = "<table border='1'><tr><th>ID</th><th>Username</th><th>Full Name</th><th>Service Dealer (English)</th><th>Service Dealer (Thai)</th><th>User Group</th><th>Delete</th></tr>";
                $.each(data.result, function(key, value){
                    if(value.user_group == '1'){
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/user/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.username + "</td>\n\
                            <td>" + value.full_name + "</td>\n\
                            <td>" + value.name_eng + "</td>\n\
                            <td>" + value.name_th + "</td>\n\
                            <td>Service Dealer</td>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteuser/" + value.id + "/" + value.username + "' onclick='return confirm(\"Are you sure you want to delete " + value.username + "?\")'>Delete</a></td>\n\
                        </tr>";
                    }
                    else{
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/user/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.username + "</td>\n\
                            <td>" + value.full_name + "</td>\n\
                            <td>" + value.name_eng + "</td>\n\
                            <td>" + value.name_th + "</td>\n\
                            <td>Admin</td>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteuser/" + value.id + "/" + value.username + "' onclick='return confirm(\"Are you sure you want to delete " + value.username + "?\")'>Delete</a></td>\n\
                        </tr>";
                    }
                });
                results += "</table>";
                $("#results").html("Total rows: " + data.total + "<br /><div id='pagination-div-id'>" + data.links + "</div>");
                $("#results").append(results);
            })
            return false;
        });
    </script>
</html>