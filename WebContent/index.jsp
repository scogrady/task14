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

<body >

    <div class="container" style="width:40%" >
      <div class="header clearfix">
        
        <h1 class="text-muted" ><font color="green" ><u>Interactive Privacy Form Builder</u></font></h1>
      </div>
     </div> 
     <div align="center"> <img src="icon.png" alt="Smiley face" height="42" width="42"></div>
      <div align="center"><h2><font color="blue" face="Lucida Sans Unicode">TEAM JUST IN TIME</font></h2></div>
      
	<div class="container" style="margin-left: 120px">
		<div class="row">
			
		</div>

		<div class="row">
			<form class="form-inline">
				<div class="form-group col-md-12">
					

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
				</form>
		</div>
	</div>
	<br>
	<div class="row" style="text-align: center">
		<div class="col-md-offset-3 col-md-5">
			
			<div class="panel panel-default" style="width: 100%" align="center">
				<div class="panel-body" align="center"><h3>Help Information</h3></div>
				<div class="panel-footer" align="left"  >
				
						<b>Version1:</b> Model Form without Opt-out<br>
						<b>Version2:</b> Model Form with Opt-out by Telephone or Online<br>
						<b>Version3:</b> Model Form with Mail in opt out Form<br>
						<b>Version4:</b> Optional Mail in Form
						</ul>
				</div>
			</div>
			
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