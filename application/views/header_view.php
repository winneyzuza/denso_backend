<!DOCTYPE html>
<?php 
	$getArray = $this->input->get();
	$lang = $this->session->userdata('lang');
	if(isset($getArray['lang'])) { unset($getArray['lang']);  }
	$getNewArray = array();
	if (!empty($getArray)) {
		foreach ($getArray as $key => $value) {
			if (!is_array($value)) {
				$getNewArray[] = "$key=$value";
			} else {
				foreach ($value as $key2 => $val) {
					$getNewArray[] = $key."[]=".$val;
				}
			}
		}
	}
	$NewString = current_url()."?";
	$getString = implode("&", $getNewArray);
	$NewString.= $getString.($getString == ""?"lang=":"&lang=");
	switch ($lang) {
		case 'en':
			$engOpen = "<b>";
			$engClose = "</b>";
			$thaiOpen = "<a href='".$NewString."th'>";
			$thaiClose = "</a>";
			// Add more langOpen and langClose to support more languages
			break;
		
		case 'th':
		default:				// Move to the desired default language
			$thaiOpen = "<b>";
			$thaiClose = "</b>";
			$engOpen = "<a href='".$NewString."en'>";
			$engClose = "</a>";
			// Add more langOpen and langClose to support more languages
			break;
	}
?>
<html>
	<head>
		<!-- GLOBAL STYLES BELOW -->
		<meta charset='utf-8'>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Home</title>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/menubar.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/header.css">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>application/assets/css/side.css">
	</head>
	<body>
		<div id="logo">
			<img id="logo" src="<?php echo base_url(); ?>application/assets/images/logo_admin.png">
		</div>
		<div id="lang">
			<select id="lang_select" onchange="changeLanguage();">
				<option <?php echo $lang=="en"?"selected":""; ?> value="en">English</option>
				<option <?php echo $lang=="th"?"selected":""; ?> value="th">ไทย</option>
			</select>
			<noscript>
				<?php echo $engOpen."English".$engClose; ?>
				<?php echo $thaiOpen."ไทย".$thaiClose; ?>
			</noscript>
		</div>
		<script type="text/javascript">
			function changeLanguage(){
				window.location.href="<?php echo $NewString; ?>" + document.getElementById("lang_select").value;
			}
		</script>