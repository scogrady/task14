<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>

<body>
	<div class="container" style="margin-left: 120px">
		<div class="row">
			<div class="col-md-12">
				<br /> <br />
				<h3 class="checkout-title">Privacy Notice Form</h3>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<br /> <br />
				<p class="checkout-title">
					Questions with<span class="star"> * </span>are mandatory.
				</p>
			</div>
		</div>



		<div class="row">
			<form class="form-inline" method="POST" onsubmit="storeValues(this)">
				<div class="form-group col-md-12">
					<br /> <br />

					<div class="form-group col-md-12">
						<br /> <label><span class="star"> * </span>Mail-in form </label>
					</div>
					<div class="form-group col-md-12">
						<div class="col-md-10">
							<label for="name">Apply my choices only to me <span
								class="glyphicon glyphicon-info-sign" id="popoverData5" href="#"
								data-content="If you have a joint account, your choice(s) will apply to everyone on your account unless you mark."
								data-placement="right" data-trigger="hover"></span>
							</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" name="applyChoices" value="yes"
								${mybean.field1[0]} /> Yes
						</div>
						<div class="col-md-3">
							<input type="radio" name="applyChoices" value="no" ${mybean.field1[1]}/> No
						</div>
					</div>

					<div class="form-group col-md-12">
						<br />

						<!--website-->
						<div class="col-md-2">
							<label for="name">Address 1 </label>
						</div>
						<div class="col-md-10">
							<input size="80" maxlength="64" type="text" class="form-control"
								name="address1" value="${mybean.field2}" required/>
						</div>

						<br>
						<div class="col-md-2">
							<br> <label for="name">Address 2 </label>
						</div>
						<div class="col-md-10">
							<br> <input size="80" maxlength="64" type="text"
								class="form-control" name="address2" value="${mybean.field3}" required/>
						</div>

						<div class="col-md-2">
							<br> <label for="name">City </label>
						</div>
						<div class="col-md-10">
							<br> <input size="80" maxlength="64" type="text"
								class="form-control" name="city" value="${mybean.field4}" required/>
						</div>

						<div class="col-md-2">
							<br> <label for="name">State </label>
						</div>
						<div class="col-md-10">
							<br> <input size="80" maxlength="64" type="text"
								class="form-control" name="state" value="${mybean.field5}" required/>
						</div>

						<div class="col-md-2">
							<br> <label for="name">Zip code </label>
						</div>
						<div class="col-md-10">
							<br> <input size="80" maxlength="64" type="text"
								class="form-control" name="zip" value="${mybean.field6}" required/>
						</div>

					</div>

					<div class="form-group col-md-12">
						<div class="col-md-10">
							<label for="name">Account Number </label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" name="accountNumber" value="yes"
								${mybean.field7[0]} /> Yes
						</div>
						<div class="col-md-3">
							<input type="radio" name="accountNumber" value="no" ${mybean.field7[1]}/> No
						</div>
					</div> 

					<div class="form-group col-md-12">
					<br /> <br />
					<!--other important information-->
					<div class="col-md-3" style="text-align: center">
						<input type="submit" class="btn btn-default" value="Generate HTML" />
					</div>

					<div class="col-md-3" style="text-align: center">
						<input type="submit" name="button" class="btn btn-default"
							value="Save As XMl" formaction="DownloadServlet" />
					</div>
					<input type="hidden" id="thisField" name="version" value="1">

					<div class="col-md-2" style="text-align: center">
						<button type="reset" value="Reset" class="btn btn-default ">Reset</button>
					</div>


				</div>

			</form>

			<form method="post" action="UploadServlet"
				enctype="multipart/form-data">
				Select xml file to upload: <input type="file" name="file" size="60" /><br />
				<br /> <input type="submit" value="Upload" />
			</form>
		</div>

	</div>


</body>


<script type="text/javascript">
	$('#popoverData1').popover();
	$('#popoverData2').popover();
	$('#popoverData3').popover();
	$('#popoverData4').popover();

	
	
	$("input[name^='r']").click(function() {

	    var test = $(this).val();
	    //alert(test.substring(0,1));

	    $("div.desc" + test.substring(0,1)).hide();

	    $("#r" + test).show();
	 });
	

	$("input[name='qf']").click(function() {

	    // var test = $(this).val();
	    // //alert(test.substring(0,1));

	    // $("div.qf" + test).hide();

	    //$("#r" + test).show();

	    $('#qfShow').css('display', ($(this).val() === 'qfyes') ? 'block' : 'none');
	 });
	


	$(document).ready(
					function() {
						var max_fields = 10; //maximum input boxes allowed
						var wrapper = $(".input_fields_wrap"); //Fields wrapper
						var add_button = $(".add_field_button"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.click(
										function(e) { //on add input button click
											e.preventDefault();
											if (x < max_fields) { //max input box allowed
												x++; //text box increment
												$(wrapper)
														.append(
																'<div><input input size="80" maxlength="64" type="text" class="form-control" name="mytext[]"/> <a href="#" class="remove_field glyphicon glyphicon-remove"></a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field", function(e) { //user click on remove text
							e.preventDefault();
							$(this).parent('div').remove();
							x--;
						})
					});

	function storeValues(form) {
		var informationList = [];
        $.each($("input[name='information']:checked"), function(){            
        	informationList.push($(this).val());
        });
        var info = informationList.join("#");
        //alert(info);
        
        var informationWhen = [];
        $.each($("input[name='informationWhen']:checked"), function(){            
        	informationWhen.push($(this).val());
        });
        var infoWhn = informationWhen.join("#");
        //alert(infoWhn);
        
        //alert("My favourite sports are: " + favorite.join(", "));

		setCookie("form", JSON.stringify({
			version : "4",
			 applyChoices : form.applyChoices.value,
	            address1 : form.address1.value,
	            address2 : form.address2.value,
	            city : form.city.value,
	            state : form.state.value,
	            zip : form.zip.value,
	            accountNumber : form.accountNumber.value
		}));
		return true;
	}

	function setCookie(cname, cvalue) {
		var d = new Date();
		d.setTime(d.getTime() + (1 * 24 * 60 * 60 * 1000));
		var expires = "expires=" + d.toGMTString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
		getCookie("form");
	}

	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie;
		/* for (var i = 0; i < ca.length; i++) {
			var c = ca[i]; */
			alert("c: " + ca);
			/* while (c.charAt(0) == ' ')
				c = c.substring(1);
			if (c.indexOf(name) == 0) {
				return c.substring(name.length, c.length);
			} 
		}*/
		return "";
	}
</script>
</html>