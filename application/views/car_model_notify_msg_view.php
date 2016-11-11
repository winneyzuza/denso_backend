<html>
    <head>
        <title>Car Model Notification</title>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/add.css">
        <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
        <script>
            $(document).on('change', '#CarMaker', function(){
                $("#CarModel").html("<option selected disabled>Please Select</option>");
                $("#results").html('');
                $.ajax({
                    url:        '<?PHP echo base_url(); ?>index.php/search/fetchallcarmodel',
                    data:       {CarMaker: this.value},
                    type:       'POST',
                    dataType:   'json',
                })
                .done(function(data){
                    $("#CarModel").html("<option selected disabled>Please Select</option>");
                    $.each(data, function(key, value){
                        $("#CarModel").append("<option value='" + value.car_model + "'>" + value.car_model + "</option>");
                    });
                })
            });
            
		</script>    	         
    </head>
    <body>
        <h1>Car Model Notification Setting</h1>
        <?PHP
            $this->db->select('maker_en, maker_id');
            $this->db->order_by('maker_en', 'asc');
            $raw = $this->db->get('car_makers')->result_array();
//            print_r($raw);
            $CarMaker = '<option selected disabled>Please Select</option>';
            foreach ($raw as $value) {
                    $CarMaker .= "<option value='".$value['maker_id']."'>".$value['maker_en']."</option>";
            }

	       if (validation_errors()) {
	           echo "<script>window.onload = function(){alert('" . validation_errors() . "');}</script>";
	       }else{
	       	$msg = $this->session->userdata('addResult');
	          if($msg != ''){
	          	if($msg == 'add_successful'){
	          		echo "<script>window.onload = function(){alert('" .  lang('update_successful') . "');}</script>";
	          	}else {
	          		echo "<script>window.onload = function(){alert('" .  lang('update_error') . "');}</script>";
	          	}
	          }
	       }
	       $this->session->unset_userdata('addResult');

  	 	?>        
        <form name="calModelNotifyMsgFrm" id="calModelNotifyMsgFrm" action="<?PHP echo base_url();?>index.php/add/carModelNotification" method="post">
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
                        <option selected disabled>Please Select</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>EmailGroup</td>
                <td>
                <input size="80" type="text" name="EmailGroup" id="EmailGroup" />
                </td>            
            </tr>
            </table>
            <br/>
            <button type="button" id="frm_submit" class="button blue_back">Add</button>
            <button type="button" id="search" class="button blue_back">Search</button>
            <br/>
        </form>
        <br/>
        <span id="results"></span>
    </body>
    <script src="<?php echo base_url(); ?>application/assets/js/jquery-1.11.2.min.js"></script>
    <script>
		function checkEmails(){
	
			var cm = document.getElementById("CarMaker");
			var carMaker = cm.options[cm.selectedIndex].value;
	
			var cml = document.getElementById("CarModel");
			var carModel = cml.options[cml.selectedIndex].value;
	
			var emails = document.getElementById('EmailGroup').value;
	
			if(carMaker == null || carMaker == "" || carMaker === "Please Select"){
				alert("Please select Car Maker !!!");
				return false;
			}else if (carModel === null || carModel === "" || carModel === "Please Select"){
				alert("Please select Car Model !!!");
				return false;
			}else if (emails === null || emails === ""){
				alert("Please input as least 1 email. !!!");
				return false;
			}else{
				var emailflag = false;
				var emailArray = emails.split(",");
				for(i = 0; i <emailArray.length; i++){
					if(checkEmail(emailArray[i])){
						emailflag = true;
					}else{
						alert("Invalid Email : " + emailArray[i]);
						return false;
					}
				}
				return emailflag;
			}
		}

		function checkEmail(email) {
			var regExp = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i;
			return regExp.test(email);
		}
	
	    $(document).on('click', '#frm_submit', function(){
	
	    	if(checkEmails()){
	        	document.getElementById("calModelNotifyMsgFrm").submit();
	        }
	        
	    });
	    
        $(document).on('click', '#search', function(){
            $.ajax({
                url:        '<?PHP echo base_url(); ?>index.php/search/carModelNotification',
                data:       {CarMaker: $('#CarMaker').val(), CarModel: $('#CarModel').val()},
                type:       'POST',
                dataType:   'json',
            })
            .done(function(data){
                var temp = data;
                var results = "<table id='recent_data'><tr><th>ID</th><th>Car Maker</th><th>Cal Model</th><th>Delete</th></tr>";
                $.each(data.result, function(key, value){
                	results += "<tr>\n\
                    	<td><a href='<?PHP echo base_url(); ?>index.php/update/carModelNotification/" + value.id + "'>" + value.id + "</a></td>\n\
                        <td>" + value.maker_en + "</td>\n\
                        <td>" + value.car_model + "</td>\n\
                        <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteCarModelNotification/" + value.id + "/" + value.car_model + "' onclick='return confirm(\"Are you sure you want to delete " + value.car_model + "?\")'>Delete</a></td>\n\
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
                data:       {CarMaker: $('#CarMaker').val(), CarModel: $('#CarModel').val()},
                type:       'POST',
                dataType:   'json',
            })
            .done(function(data){
                var temp = data;
                var results = "<table id='recent_data'><tr><th>ID</th><th>Car Maker</th><th>Cal Model</th><th>Delete</th></tr>";
                $.each(data.result, function(key, value){
                    if(value.user_group == '1'){
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/carModelNotification/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.maker_en + "</td>\n\
                            <td>" + value.car_model + "</td>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteCarModelNotification/" + value.id + "/" + value.car_model + "' onclick='return confirm(\"Are you sure you want to delete " + value.car_model + "?\")'>Delete</a></td>\n\
                        </tr>";
                    }
                    else{
                        results += "<tr>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/update/carModelNotification/" + value.id + "'>" + value.id + "</a></td>\n\
                            <td>" + value.maker_en + "</td>\n\
                            <td>" + value.car_model + "</td>\n\
                            <td><a href='<?PHP echo base_url(); ?>index.php/search/deleteCarModelNotification/" + value.id + "/" + value.car_model + "' onclick='return confirm(\"Are you sure you want to delete " + value.car_model + "?\")'>Delete</a></td>\n\
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