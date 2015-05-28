<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Form</title>
<link href="css/jquery.ui.core.min.css" rel="stylesheet" type="text/css">
<link href="css/jquery.ui.theme.min.css" rel="stylesheet"
	type="text/css">
<link href="css/jquery.ui.autocomplete.min.css" rel="stylesheet"
	type="text/css">
<link href="css/jquery.ui.menu.min.css" rel="stylesheet" type="text/css">


<!-- bootstrap CSS file -->
<link href="css/bootstrap.min.css" rel="stylesheet" />


<script src="javascript/jquery.js" type="text/javascript"></script>
<!-- bxSlider Javascript file -->
<script src="javascript/jquery.bxslider.min.js"></script>
<!-- SmartMenus jQuery plugin -->
<script src="javascript/jquery.smartmenus.js" type="text/javascript"></script>
<!-- jQuery UI plugin -->
<script src="javascript/jquery-ui.js" type="text/javascript"></script>
<script src="javascript/jquery.ui-1.10.4.autocomplete.min.js"
	type="text/javascript"></script>
<!--Bootstrap plugin -->
<script src="javascript/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"
	href="css/checkout.css" />
</head>

<body>
	<div class="container" style="margin-left: 120px">
		<div class="row">
			
		</div>

		<div class="row">
			<form class="form-inline">
				

				
				<div class="form-group col-md-12">
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />

					<!--finance institution name-->
					<div class="col-md-10" style="text-align: center">
						<br/>
						<br/>
						<label class="control-label required">Choose Version 	</label>
						<select id="selection" class="form-control">
							<option value="v1">Version 1</option>
							<option value="v2">Version 2</option>
							<option value="v3">Version 3</option>
							<option value="v4">Version 4</option>
						</select>	
						<a id="button" class="btn btn-default" >Submit</a>
					</div>	

								
					
		</div>
	</div>
	<div class="row" style="text-align: center">
		<div class="col-md-offset-3 col-md-5">
			<h3>Help Information</h3>
			<ul style="float: left">
				<li style="float: left">Version1: Model Form without Opt-out</li>
				<li style="float: left">Version2: Model Form with Opt-out by Telephone or Online</li>
				<li style="float: left">Version3: Model Form with Mail-in Opt-out Form</li>
				<li style="float: left">Version4: Optional Mail-in Form</li>
			</ul>
		</div>
	</div>
</body>
<script>
	$(document).ready(function(){
		$("#button").click(function(){
			window.open($("#selection").val() + ".jsp");
		})
	})
</script>
</html>