<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
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

					<!--date-->
					<div class="col-md-2">
						<label for="insert_date"><span class="star"> * </span>Date</label>
					</div>
					<div class="col-md-10">
						<input type="date" class="form-control" name="date"
							min="2000-01-01" max="2015-12-31" value="2015-05-29"
							${mybean.field1} required /><br>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />

					<!--finance institution name-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Name of
							financial institution </label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="name" name="bankName" value="${mybean.field2}" required />
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />

					<!--personal information types-->
					<div class="col-md-12">
						<label for="name_of_financial_institation"><span
							class="star"> * </span>What type of information to collect? (You
							must select 5 of the following terms.)<span
							class="glyphicon glyphicon-info-sign" id="popoverData5"
							data-content=" All institutions must use 'Social Security number' as information and select 5 others  
							 from the selection provided, by click repective check boxes"
							rel="popover" data-placement="right" data-trigger="hover">
						</span></label>
					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="income" ${mybean.field3[0]} /> <label for="income">Income</label>
						</div>
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="accountBalances" ${mybean.field3[1]} /> <label
								for="income">Account Balances</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="paymentHistory" ${mybean.field3[2]} /> <label
								for="income">Payment History</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="transactionHistory" ${mybean.field3[3]} /> <label
								for="income">Transaction History</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="transactionOrLossHistory" ${mybean.field3[4]} /> <label
								for="income">Transaction or Loss History</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="creditHistory" ${mybean.field3[5]} /> <label
								for="income">Credit History</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="creditScores" ${mybean.field3[6]} /> <label for="income">Credit
								Scores</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="assets" ${mybean.field3[7]} /> <label for="income">Assets</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="investmentExperience" ${mybean.field3[8]} /> <label
								for="income">Investment Experience</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="credit-basedInsuranceScores" ${mybean.field3[9]} /> <label
								for="income">Credit-based Insurance Scores</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="insuranceClaimHistory" ${mybean.field3[10]} /> <label
								for="income">Insurance Claim History</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="purchaseHistory" ${mybean.field3[11]} /> <label
								for="income">Purchase History</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="medicalInformation" ${mybean.field3[12]} /> <label
								for="income">Medical Information</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="overdraftHistory" ${mybean.field3[13]} /> <label
								for="income">Overdraft History</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="wireTransferInstructions" ${mybean.field3[14]} /> <label
								for="income">Wire Transfer Instructions</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="accountTransactions" ${mybean.field3[15]} /> <label
								for="income">Account Transactions</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="riskTolerance" ${mybean.field3[16]} /> <label
								for="income">Risk Tolerance</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="medical-relatedDebts" ${mybean.field3[17]} /> <label
								for="income">Medical-related Debts</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="creditHCardOrOtherDebts" ${mybean.field3[18]} /> <label
								for="income">Credit Card or Other Debts</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="mortgageRatesAndPayments" ${mybean.field3[19]} /> <label
								for="income">Mortgage Rates and Payments</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="retirementAssets" ${mybean.field3[20]} /> <label
								for="income">Retirement Assets</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="checkingAccountInformation" ${mybean.field3[21]} /> <label
								for="income">Checking Account Information</label>
						</div>

						<div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="employmentInformation" ${mybean.field3[22]} /> <label
								for="income">Employment Information</label>
						</div>

						<%-- <div class="col-md-3">
							<input class="5checkbox" type="checkbox" name="information"
								value="wireTransferInstructions" ${mybean.field3[23]} /> <label
								for="income">Wire Transfer Instructions</label>
						</div> --%>

					</div>


				</div>

				<div class="form-group col-md-12">
					<br />

					<!--phone-->
					<div class="col-md-10">
						<label for="name"><span class="star"> * </span>How do you
							want to denote your client as in the form?<span
							class="glyphicon glyphicon-info-sign" id="popoverData6"
							data-content=" You can choose to denote your client(for whom form is being designed) as 1) Customer or as 2) Member"
							rel="popover" data-placement="right" data-trigger="hover">
						</span> </label>
					</div>


				</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<input type="radio" name="whose" value="customer"
							${mybean.field4[0]} checked="checked" />
						Customer
					</div>
					<div class="col-md-3">
						<input type="radio" name="whose" value="member"
							${mybean.field4[1]} /> Member
					</div>
				</div>


				<div class="form-group col-md-12">
					<br />
					<div class="col-md-12">
						<label for="name_of_financial_institation"><span
							class="star"> * </span>Reasons to share your personal information
						</label>
					</div>

					<div class="col-md-12">
						<br /> <label> a. For our everyday business purpose <span
							class="glyphicon glyphicon-info-sign" id="popoverData1"
							data-content="Such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureus"
							rel="popover" data-placement="right" data-trigger="hover">
						</span>
						</label>
					</div>

					<div class="col-md-12">
						<div class="col-md-6">
							<label>Do you share?</label>
						</div>
						<div class="col-md-6">
							<label>Can you limit sharing?</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" id="yes" name="r11" value="11yes"
								${mybean.field5[0]} checked="checked" />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r11" value="11no"
								${mybean.field5[1]} /> No
						</div>
						<div id="r11yes" class="desc1">
							<div class="col-md-1">
								<input type="radio" name="r12" value="yes" ${mybean.field6[0]}
									checked="checked" /> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r12" value="no" ${mybean.field6[1]} />
								No
							</div>
						</div>
						<div id="r11no" style="display: none;" class="desc1">
							<div class="col-md-2">We don't share</div>
						</div>
					</div>

					<div class="col-md-12">
						<br /> <label>b. For our marketing purpose <span
							class="glyphicon glyphicon-info-sign" id="popoverData2" href="#"
							data-content="To offer product and services to you" rel="popover"
							data-placement="right" data-trigger="hover"></span></label>
					</div>

					<div class="col-md-12">
						<div class="col-md-6">
							<label>Do you share?</label>
						</div>
						<div class="col-md-6">
							<label>Can you limit sharing?</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" id="yes" name="r21" value="21yes"
								 ${mybean.field7[0]} checked="checked"/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r21" value="21no"
								${mybean.field7[1]} /> No
						</div>
						<div id="r21yes" class="desc2">
							<div class="col-md-1">
								<input type="radio" name="r22" value="yes" ${mybean.field8[0]}
									checked="checked" /> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r22" value="no" ${mybean.field8[1]} />
								No
							</div>
						</div>
						<div id="r21no" style="display: none;" class="desc2">
							<div class="col-md-2">We don't share</div>
						</div>
					</div>


					<div class="col-md-12">
						<br /> <label>c. For joint marketing with other financial
							companies </label>
					</div>

					<div class="col-md-12">
						<div class="col-md-6">
							<label>Do you share?</label>
						</div>
						<div class="col-md-6">
							<label>Can you limit sharing?</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" id="yes" name="r31" value="31yes"
								 ${mybean.field9[0]} checked="checked"/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r31" value="31no"
								${mybean.field9[1]} /> No
						</div>
						<div id="r31yes" class="desc3">
							<div class="col-md-1">
								<input type="radio" name="r32" value="yes" ${mybean.field10[0]}
									checked="checked" /> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r32" value="no" ${mybean.field10[1]} />
								No
							</div>
						</div>
						<div id="r31no" style="display: none;" class="desc3">
							<div class="col-md-2">We don't share</div>
						</div>
					</div>


					<div class="col-md-12">
						<br /> <label>d. For our affiliats' everyday business
							purposes <span class="glyphicon glyphicon-info-sign"
							id="popoverData3" href="#"
							data-content="Information about your transaction and experiences"
							rel="popover" data-placement="right" data-trigger="hover"></span>
						</label>
					</div>

					<div class="col-md-12">
						<div class="col-md-6">
							<label>Do you share?</label>
						</div>
						<div class="col-md-6">
							<label>Can you limit sharing?</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" id="yes" name="r41" value="41yes"
								 ${mybean.field11[0]} checked="checked"/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r41" value="41no"
								${mybean.field11[1]} /> No
						</div>
						<div id="r41yes" class="desc4">
							<div class="col-md-1">
								<input type="radio" name="r42" value="yes" ${mybean.field12[0]}
									checked="checked" /> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r42" value="no" ${mybean.field12[1]} />
								No
							</div>
						</div>
						<div id="r41no" style="display: none;" class="desc4">
							<div class="col-md-2">We don't share</div>
						</div>
					</div>


					<div class="col-md-12">
						<br /> <label>e. For our affiliates' everyday business
							purposes <span class="glyphicon glyphicon-info-sign"
							id="popoverData4" href="#"
							data-content="Information about your customers creditworthiness "
							rel="popover" data-placement="right" data-trigger="hover"></span>
						</label>
					</div>

					<div class="col-md-12">
						<div class="col-md-6">
							<label>Do you share? </label>
						</div>
						<div class="col-md-6">
							<label>Can you limit sharing?</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" id="yes" name="r51" value="51yes"
								 ${mybean.field13[0]} checked="checked"/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r51" value="51no"
								${mybean.field13[1]} /> No
						</div>
						<div id="r51yes" class="desc5">
							<div class="col-md-1">
								<input type="radio" name="r52" value="yes" ${mybean.field14[0]}
									checked="checked" /> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r52" value="no" ${mybean.field14[1]} />
								No
							</div>
						</div>
						<div id="r51no" style="display: none;" class="desc5">
							<div class="col-md-2">We don't share</div>
						</div>
					</div>


					<div class="col-md-12">
						<br /> <label>f. Do you have any affiliates?<span
							class="glyphicon glyphicon-info-sign" id="popoverData7"
							data-content=" If your institution work with some affiliates,
							 which use ur brand name etc, you should select yes in this option."
							rel="popover" data-placement="right" data-trigger="hover">
						</span></label>
					</div>
					<div>
						<div class="col-md-3">
							<input type="radio" id="yes" name="qf" value="qfyes"
								 ${mybean.field15[0]} checked="checked"/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="qf" value="qfno"
								${mybean.field15[1]} /> No
						</div>


					</div>

					<div class="col-md-12" id="qfShow" style="display: block;">

						<div class="col-md-12">
							<br /> <label for="name_of_financial_institation">For
								our affiliates to market you<span
								class="glyphicon glyphicon-info-sign" id="popoverData8"
								data-content=" Do your aggiliates use the customers personal information , or you share your customer information with them,
							or they can use your customer information for marketting.If any of these are yes, yu should select yes here."
								rel="popover" data-placement="right" data-trigger="hover">
							</span>
							</label>
						</div>

						<div class="col-md-12">
							<div class="col-md-6">
								<label>Do you share?</label>
							</div>
							<div class="col-md-6">
								<label>Can you limit sharing?</label>
							</div>
						</div>

						<div class="col-md-12">
							<div class="col-md-3">
								<input type="radio" id="yes" name="r61" value="61yes"
									 ${mybean.field16[0]} checked="checked"/>Yes
							</div>
							<div class="col-md-3">
								<input type="radio" id="no" name="r61" value="61no"
									${mybean.field16[1]} /> No
							</div>
							<div id="r61yes" class="desc6">
								<div class="col-md-1">
									<input type="radio" name="r62" value="yes" ${mybean.field17[0]}
										checked="checked" /> Yes
								</div>
								<div class="col-md-1">
									<input type="radio" name="r62" value="no" ${mybean.field17[1]} />
									No
								</div>
							</div>
							<div id="r61no" style="display: none;" class="desc6">
								<div class="col-md-2">We don't share</div>
							</div>
						</div>
					</div>




					<div class="col-md-12">
						<br /> <label for="name_of_financial_institation">g. For
							nonaffiliats to market you</label>
					</div>


					<div class="col-md-12">
						<div class="col-md-6">
							<label>Do you share?</label>
						</div>
						<div class="col-md-6">
							<label>Can you limit sharing?</label>
						</div>
					</div>

					<div class="col-md-12">
						<div class="col-md-3">
							<input type="radio" id="yes" name="r71" value="71yes"
								 ${mybean.field18[0]} checked="checked"/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r71" value="71no"
								${mybean.field18[1]} /> No
						</div>
						<div id="r71yes" class="desc7">
							<div class="col-md-1">
								<input type="radio" name="r72" value="yes" ${mybean.field19[0]}
									checked="checked" /> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r72" value="no" ${mybean.field19[1]} />
								No
							</div>
						</div>
						<div id="r71no" style="display: none;" class="desc7">
							<div class="col-md-2">We don't share</div>
						</div>
					</div>

				</div>



				<div class="form-group col-md-12">
					<br /> <label for="name"><span class="star"> * </span>To
						limit our sharing </label>

					<!--phone-->
					<div>
						<br />
						<div class="col-md-2">

							<label for="name">Limit sharing phone number </label>
						</div>
						<div class="col-md-10">
							<input size="80" maxlength="64" type="text" class="form-control"
								id="phone" name="limitSharingPhoneNumber"
								value="${mybean.field20}" />
						</div>
					</div>

				</div>

				<div class="form-group col-md-12">
					<br />

					<!--website-->
					<div class="col-md-2">
						<label for="name">Limit sharing website </label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							name="limitSharingOnlineWebsite" value="${mybean.field21}" />
					</div>

					<br>
					<div class="col-md-2">
						<br> <label for="name">Within how many days </label>
					</div>
					<div class="col-md-10">
						<br> <input size="80" maxlength="64" type="text"
							class="form-control" name="sharingWithinDays1"
							value="${mybean.field22}" />
					</div>
				</div>




				<div class="form-group col-md-12">
					<br />

					<!--phone-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Phone
							number <span class="glyphicon glyphicon-info-sign"
							id="popoverData10"
							data-content="Number where customer can call if he has any questions or doubts "
							rel="popover" data-placement="right" data-trigger="hover">
						</span></label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="phone" name="phoneNumber" value="${mybean.field23}" required />
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />

					<!--website-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Online
							website <span class="glyphicon glyphicon-info-sign"
							id="popoverData11"
							data-content="Website where customer can check and log his FAQ's "
							rel="popover" data-placement="right" data-trigger="hover">
						</span></label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="website" name="onlineWebsite" value="${mybean.field24}" />
					</div>
				</div>

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
							 ${mybean.field25[0]} checked="checked"/> Yes
					</div>
					<div class="col-md-3">
						<input type="radio" name="applyChoices" value="no"
							${mybean.field25[1]} /> No
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
							name="address1" value="${mybean.field26}" />
					</div>

					<br>
					<div class="col-md-2">
						<br> <label for="name">Address 2 </label>
					</div>
					<div class="col-md-10">
						<br> <input size="80" maxlength="64" type="text"
							class="form-control" name="address2" value="${mybean.field27}" />
					</div>

					<div class="col-md-2">
						<br> <label for="name">City </label>
					</div>
					<div class="col-md-10">
						<br> <input size="80" maxlength="64" type="text"
							class="form-control" name="city" value="${mybean.field28}" />
					</div>

					<div class="col-md-2">
						<br> <label for="name">State </label>
					</div>
					<div class="col-md-10">
						<br> <input size="80" maxlength="64" type="text"
							class="form-control" name="state" value="${mybean.field29}" />
					</div>

					<div class="col-md-2">
						<br> <label for="name">Zip code </label>
					</div>
					<div class="col-md-10">
						<br> <input size="80" maxlength="64" type="text"
							class="form-control" name="zip" value="${mybean.field30}" />
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
							${mybean.field31[0]} checked="checked" /> Yes
					</div>
					<div class="col-md-3">
						<input type="radio" name="accountNumber" value="no"
							${mybean.field31[1]} /> No
					</div>
				</div>


				<div class="form-group col-md-12">
					<br />
					<!--who we are-->
					<div class="col-md-2">
						<label for="name">Who is providing this notice? <span
							class="glyphicon glyphicon-info-sign" id="popoverData12"
							data-content="Name of the institution, or list of individul institutions which form the group "
							rel="popover" data-placement="right" data-trigger="hover">
						</span>
						</label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="days" name="whoProvidingNotice" value="${mybean.field32}" />
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<div class="col-md-2">
						<label for="name">How we protect your personal information
							? </label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="days" name="howWeProtectPersonalInfo"
							value="${mybean.field33}" />
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--days-->
					<div class="col-md-10">
						<label for="name"><span class="star"> * </span>How to
							collect personal information? <span
							class="glyphicon glyphicon-info-sign" id="popoverData9"
							data-content=" Instances where you collect information about your cliets. You have select 5 from the listed checkboxes"
							rel="popover" data-placement="right" data-trigger="hover">
						</span></label>
					</div>

					<div class="col-md-10">
						<label for="income">Collect personal information when</label>
					</div>


					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="openAccount" ${mybean.field34[0]} /> <label for="income">Open
								an account</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="depositMoney" ${mybean.field34[1]} /> <label for="income">Deposit
								money</label>
						</div>

						<div class="col-md-6">

							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellWhereSendMoney" ${mybean.field34[2]} /> <label
								for="income">Tell us where to send the money</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="useCard" ${mybean.field34[3]} /> <label for="income">Use
								credit/debit card</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="payBill" ${mybean.field34[4]} /> <label for="income">Pay
								your bills</label>
						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="seekFinancialTaxAdvice" ${mybean.field34[5]} /> <label
								for="income">Seek financial or tax advice</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="applyForInsurance" ${mybean.field34[6]} /> <label
								for="income">Apply for insurance</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="payInsurancePremium" ${mybean.field34[7]} /> <label
								for="income">Pay insurance premiums</label>
						</div>

						<div class="col-md-6">

							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="directUsSellSecurities" ${mybean.field34[8]} /> <label
								for="income">Direct us to sell your securities</label>

						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="sellSecurities" ${mybean.field34[9]} /> <label
								for="income">Sell securities to us</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="buySecurities" ${mybean.field34[10]} /> <label
								for="income">Buy securities from us</label>
						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="seekAdviceInvestments" ${mybean.field34[11]} /> <label
								for="income">Seek advice about your investments</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="directUsBuySecurities" ${mybean.field34[12]} /> <label
								for="income">Direct us to buy securities</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="fileAnInsuranceClaim" ${mybean.field34[13]} /> <label
								for="income">File an insurance claim</label>
						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="makeDepositsWithdrawalsFromAccount" ${mybean.field34[14]} />
							<label for="income">Make deposits or withdrawals from
								your account</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="provideEmploymentInformation" ${mybean.field34[15]} /> <label
								for="income">Provide employment information</label>

						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveUsIncomeInformation" ${mybean.field34[16]} /> <label
								for="income">Give us your income information</label>
						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="enterIntoInvestmentAdvisoryContract"
								${mybean.field34[17]} /> <label for="income">Enter into
								an investment advisory contract</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveEmploymentHistory" ${mybean.field34[18]} /> <label
								for="income">Give us your employment history</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="provideAccountInformation" ${mybean.field34[19]} /> <label
								for="income">Provide account information</label>

						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellAboutInvestmentRetirementEarnings"
								${mybean.field34[20]} /> <label for="income">Tell us
								about your investment or retirement earnings</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="applyFinancing" ${mybean.field34[21]} /> <label
								for="income">Apply for financing</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="applyLease" ${mybean.field34[22]} /> <label for="income">Apply
								for a lease</label>
						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellAboutInvestmentRetirementPortfolio"
								${mybean.field34[23]} /> <label for="income">Tell us
								about your investment or retirement portfolio</label>

						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="payUsByCheck" ${mybean.field34[24]} /> <label
								for="income">Pay us by check</label>
						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveWageStatement" ${mybean.field34[25]} /> <label
								for="income">Give us your wage statements</label>
						</div>

						<div class="col-md-6">

							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveContactInformation" ${mybean.field34[26]} /> <label
								for="income">Give us your contact information</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="makeWireTransfer" ${mybean.field34[27]} /> <label
								for="income">Make a wire transfer</label>

						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellWhoReceivesMoney" ${mybean.field34[28]} /> <label
								for="income">Tell us who receives the money</label>
						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="provideMortgageInformation" ${mybean.field34[29]} /> <label
								for="income">Provide your mortgage information</label>

						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="showDriverLicense" ${mybean.field34[30]} /> <label
								for="income">Show your driver's license</label>

						</div>

						<div class="col-md-3">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="applyLoan" ${mybean.field34[31]} /> <label for="income">Apply
								for a loan</label>


						</div>

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="showGovernmentIssuedId" ${mybean.field34[32]} /> <label
								for="income">Show your government-issued ID</label>

						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-6">
							<input class="6checkbox" type="checkbox" name="informationWhen"
								value="orderCommodityFuturesOptionTrade" ${mybean.field34[33]} />
							<label for="income">Order a commodity futures or option
								trade</label>
						</div>

					</div>


					<div class="col-md-12">
						<br /> <input type="radio" name="q10"
							value="informationFromOtherCompanies" 
							${mybean.field35[0]} checked="checked"/> <label for="income">Collect personal
							information from other companies<span
							class="glyphicon glyphicon-info-sign" id="popoverData13"
							data-content="Other companies here refer to the third parties companies which are non affiliates  "
							rel="popover" data-placement="right" data-trigger="hover">
						</span>
						</label>
					</div>

					<div class="col-md-12">
						<br /> <input type="radio" name="q10"
							value="informationFromCreditBureauEtc" ${mybean.field35[1]} /> <label
							for="income">Collect personal information from credit
							bureaus, affiliates, or other companies <span
							class="glyphicon glyphicon-info-sign" id="popoverData14"
							data-content=" Personal information collection from the sources other than above option"
							rel="popover" data-placement="right" data-trigger="hover">
						</span>
						</label>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--why can't limit sharing-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Why can't I
							limit all sharing? </label>
					</div>
					<div class="col-md-10">
						<textarea class="form-control" rows="3" cols="80"
							name="whyCantLimitShare"><c:out
								value="${mybean.field36}" /></textarea>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--days-->
					<div class="col-md-10">
						<label for="name"><span class="star"> * </span>What
							happens when I limit sharing for an account I hold jointly within
							someone else? </label>
					</div>

					<div class="col-md-12">
						<br /> <input type="radio"
							name="whtHappensLimitSharingJointAccount"
							value="willApplyToEveryoneOnAccount" 
							${mybean.field37[0]} checked="checked"/> <label for="income">Your choices
							will apply to everyone on your account.</label>
					</div>

					<div class="col-md-12">
						<br /> <input type="radio"
							name="whtHappensLimitSharingJointAccount"
							value="willApplyToEveryoneOnAccountUnlessYouTellOtherwise"
							${mybean.field37[1]} /> <label for="income">Your choices
							will apply to everyone on your account - unless you tell us
							otherwise.</label>
					</div>
				</div>



				<div id="affList">
					<div class="form-group col-md-12">
						<br />
						<!--affiliates information-->
						<div class="col-md-12">
							<label for="name"><span class="star"> * </span>Affiliates
								Information <span class="glyphicon glyphicon-info-sign"
								id="popoverData15"
								data-content="Here you have to fill 
							1.Common corporate identity of financial institution 
							2.Illustrative list of financial companies
							3.Illustrative list of non financial companies
							4.List of other companies
							List all one-after-other in the given space"
								rel="popover" data-placement="right" data-trigger="hover">
							</span></label>
						</div>

						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>Common
								Corporate Identity of Financial Institution(Name) </label>
						</div>


						<div class="col-md-10">
							<input size="78" maxlength="62" type="text" class="form-control"
								id="affiliatesName" name="affiliatesName"
								value="${mybean.field38}" />
						</div>
					</div>
					<div class="form-group col-md-12">
						<br />
						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>List of
								Financial Companies </label>
						</div>
						<div class="col-md-10">
							<textarea class="form-control" rows="3" cols="80" id="affiliates"
								name="affiliatesList1"><c:out
									value="${mybean.field39}" /></textarea>
						</div>
					</div>
					<div class="form-group col-md-12">
						<br />
						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>List of
								Non-Financial Companies </label>
						</div>
						<div class="col-md-10">
							<textarea class="form-control" rows="3" cols="80" id="affiliates"
								name="affiliatesList2"><c:out
									value="${mybean.field40}" /></textarea>
						</div>
					</div>
					<div class="form-group col-md-12">
						<br />
						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>List of
								other Companies </label>
						</div>
						<div class="col-md-10">
							<textarea class="form-control" rows="3" cols="80" id="affiliates"
								name="affiliatesList3"><c:out
									value="${mybean.field41}" /></textarea>
						</div>
					</div>
				</div>

				<div id="nonAffList">
					<div class="form-group col-md-12">
						<br />
						<!--nonaffiliate-->
						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>Nonaffiliates
							</label>
						</div>
						<div class="col-md-10">
							<textarea class="form-control" rows="3" cols="80"
								id="nonAffiliates" name="nonAffiliates"><c:out
									value="${mybean.field42}" /></textarea>
						</div>
					</div>
				</div>


				<div class="col-md-12">
					<br /> <label><span class="star"> * </span>Do you get
						involved in Joint Maketing and share information with them ?</label>
				</div>
				<div>

					<div class="col-md-3">
						<input type="radio" id="yes" name="jointMkt" value="jointMktyes"
							 ${mybean.field43[0]} checked="checked" />Yes
					</div>
					<div class="col-md-3">
						<input type="radio" id="no" name="jointMkt" value="jointMktno"
							${mybean.field43[1]} /> No
					</div>


				</div>
				<div id="jointMktList">
					<div class="form-group col-md-12">
						<br />
						<!--joint marketing-->
						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>Joint
								marketing </label>
						</div>
						<div class="col-md-10">
							<textarea class="form-control" rows="3" cols="80"
								id="jointMarketing" name="jointMarketing"><c:out
									value="${mybean.field44}" /></textarea>

						</div>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--other important information-->
					<div class="col-md-2">
						<label for="name">Other important information </label>
					</div>
					<div class="col-md-10">
						<textarea class="form-control" rows="3" cols="80" id="otherInfo"
							name="otherInfo"><c:out value="${mybean.field45}" /></textarea>
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
							value="Save As XML" formaction="DownloadServlet" />
					</div>
					<input type="hidden" id="thisField" name="version" value="3">

					<div class="col-md-2" style="text-align: center">
						<button type="reset" value="Reset" class="btn btn-default "
							onclick="this.form.reset();">Reset</button>
					</div>


				</div>
			</form>

			<form method="post" action="UploadServlet"
				enctype="multipart/form-data"
				style="float: right; margin-top: -80px">
				<div class="form-group col-md-12">
					<br /> <label for="name">Select file to upload:</label><input
						class="btn btn-default " type="file" name="file" size="60" /><br />
					<br /> <input class="btn btn-default " type="submit"
						value="Upload" />
				</div>
			</form>
		</div>
	</div>

</body>


<script type="text/javascript">
	$('#popoverData1').popover();
	$('#popoverData2').popover();
	$('#popoverData3').popover();
	$('#popoverData4').popover();
	$('#popoverData5').popover();
	$('#popoverData6').popover();
	$('#popoverData7').popover();
	$('#popoverData8').popover();
	$('#popoverData9').popover();
	$('#popoverData10').popover();
	$('#popoverData11').popover();
	$('#popoverData12').popover();
	$('#popoverData13').popover();
	$('#popoverData14').popover();
	$('#popoverData15').popover();

	$("input[name^='r']").click(function() {

		var test = $(this).val();
		//alert(test.substring(0,1));

		$("div.desc" + test.substring(0, 1)).hide();

		$("#r" + test).show();
	});

	$("input[name='qf']").click(
			function() {

				// var test = $(this).val();
				// //alert(test.substring(0,1));

				// $("div.qf" + test).hide();

				//$("#r" + test).show();

				$('#qfShow').css('display',
						($(this).val() === 'qfyes') ? 'block' : 'none');
			});

	$('input.5checkbox').on('change', function(e) {
		if ($('input.5checkbox[type=checkbox]:checked').length > 5) {
			$(this).prop('checked', false);
			alert("You can only select 5");
		}
	});

	$('input.6checkbox').on('change', function(e) {
		if ($('input.6checkbox[type=checkbox]:checked').length > 5) {
			$(this).prop('checked', false);
			alert("You can only select 5");
		}
	});

	$("input[name='r61']").click(
			function() {

				$('#affList').css('display',
						($(this).val() === '61yes') ? 'block' : 'none');
			});

	$("input[name='r71']").click(
			function() {

				$('#nonAffList').css('display',
						($(this).val() === '71yes') ? 'block' : 'none');
			});

	$("input[name='jointMkt']").click(
			function() {

				$('#jointMktList').css('display',
						($(this).val() === 'jointMktyes') ? 'block' : 'none');
			});

	$(document)
			.ready(
					function() {
						var date = new Date().toISOString().substring(0, 10);
						field = document.querySelector('#date');
						//alert(date);
						var chunks = date.split('-');
						//alert(chunks[1] + '/' + chunks[2] + '/' + chunks[0]);
						var formattedDate = chunks[1] + '/' + chunks[2] + '/'
								+ chunks[0];

						$('#date').val(formattedDate);

						var intputElements = document
								.getElementsByTagName("input");
						for (var i = 0; i < intputElements.length; i++) {
							intputElements[i].oninvalid = function(e) {
								e.target.setCustomValidity("");
								if (!e.target.validity.valid) {
									//alert(e.target.name);
									if (e.target.name === "bankName") {
										e.target
												.setCustomValidity("Please enter the name of the Financial Institution.");
									} else if (e.target.name === "phoneNumber") {
										e.target
												.setCustomValidity("Please enter a phone number.");
									} else if (e.target.name === "onlineWebsite") {
										e.target
												.setCustomValidity("Please enter a website.");
									} else if (e.target.name == "whyCantLimitShare") {
										e.target
												.setCustomValidity("Please enter information regarding why can't the bank limit sharing.");
									} else if (e.target.name == "affiliates") {
										e.target
												.setCustomValidity("Please enter information regarding your Affiliates.");
									} else if (e.target.name == "nonAffiliates") {
										e.target
												.setCustomValidity("Please enter information regarding your Non-Affiliates.");
									} else if (e.target.name == "jointMarketing") {
										e.target
												.setCustomValidity("Please enter information regarding Joint Marketing.");
									} else {
										e.target
												.setCustomValidity("Please enter this information.");
									}
								}
							}
						}
					});

	function storeValues(form) {
		var informationList = [];
		$.each($("input[name='information']:checked"), function() {
			informationList.push($(this).val());
		});
		var info = informationList.join("#");
		//alert(info);

		var informationWhen = [];
		$.each($("input[name='informationWhen']:checked"), function() {
			informationWhen.push($(this).val());
		});
		var infoWhn = informationWhen.join("#");
		//alert(infoWhn);

		//alert("My favourite sports are: " + favorite.join(", "));

		setCookie(
				"form",
				JSON
						.stringify({
							version : "3",
							date : form.date.value,
							bankName : form.bankName.value,
							information : info,
							whose : form.whose.value,
							r11 : form.r11.value,
							r12 : form.r12.value,
							r21 : form.r21.value,
							r22 : form.r22.value,
							r31 : form.r31.value,
							r32 : form.r32.value,
							r41 : form.r41.value,
							r42 : form.r42.value,
							r51 : form.r51.value,
							r52 : form.r52.value,
							qf : form.qf.value,
							r61 : form.r61.value,
							r62 : form.r62.value,
							r71 : form.r71.value,
							r72 : form.r72.value,
							limitSharingPhoneNumber : form.limitSharingPhoneNumber.value,
							limitSharingOnlineWebsite : form.limitSharingOnlineWebsite.value,
							sharingWithinDays1 : form.sharingWithinDays1.value,
							phoneNumber : form.phoneNumber.value,
							onlineWebsite : form.onlineWebsite.value,
							applyChoices : form.applyChoices.value,
							address1 : form.address1.value,
							address2 : form.address2.value,
							city : form.city.value,
							state : form.state.value,
							zip : form.zip.value,
							accountNumber : form.accountNumber.value,
							whoProvidingNotice : form.whoProvidingNotice.value,
							howWeProtectPersonalInfo : form.howWeProtectPersonalInfo.value,
							informationWhen : infoWhn,
							q10 : form.q10.value,
							whyCantLimitShare : form.whyCantLimitShare.value,
							whtHappensLimitSharingJointAccount : form.whtHappensLimitSharingJointAccount.value,
							affiliatesName : form.affiliatesName.value,
							affiliatesList1 : form.affiliatesList1.value,
							affiliatesList2 : form.affiliatesList2.value,
							affiliatesList3 : form.affiliatesList3.value,
							nonAffiliates : form.nonAffiliates.value,
							jointMkt : form.jointMkt.value,
							jointMarketing : form.jointMarketing.value,
							otherInfo : form.otherInfo.value
						}));
		window.open("privacyForm.html");
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
		//alert("c: " + ca);
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