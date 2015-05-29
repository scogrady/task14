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
					<span class="star"> * </span> = required fields.
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
							must select 5 of the following terms.)</label>
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
								value="wireTransferInstructions" ${mybean.field3[23]} /> <label
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
						<label for="name"><span class="star"> * </span>Whose
							information to share? </label>
					</div>


				</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<input type="radio" name="whose" value="customer"
							${mybean.field4[0]} checked="checked" /> Customer
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
								checked="checked" ${mybean.field5[0]} />Yes
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
							data-content="Such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureus"
							rel="popover" data-placement="right" data-trigger="hover"></span></label>
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
								${mybean.field7[0]} checked="checked" />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r21" value="21no"
								${mybean.field7[1]} /> No
						</div>
						<div id="r21yes" class="desc2">
							<div class="col-md-1">
								<input type="radio" name="r22" value="yes" ${mybean.field8[0]} />
								Yes
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
								checked="checked" ${mybean.field9[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r31" value="31no"
								${mybean.field9[1]} /> No
						</div>
						<div id="r31yes" class="desc3">
							<div class="col-md-1">
								<input type="radio" name="r32" value="yes" ${mybean.field10[0]} />
								Yes
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
							data-content="Such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureus"
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
								${mybean.field11[0]} checked="checked" />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r41" value="41no"
								${mybean.field11[1]} /> No
						</div>
						<div id="r41yes" class="desc4">
							<div class="col-md-1">
								<input type="radio" name="r42" value="yes" ${mybean.field12[0]} />
								Yes
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
							data-content="Such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureus"
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
								${mybean.field13[0]} checked="checked" />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r51" value="51no"
								${mybean.field13[1]} /> No
						</div>
						<div id="r51yes" class="desc5">
							<div class="col-md-1">
								<input type="radio" name="r52" value="yes" ${mybean.field14[0]} />
								Yes
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
						<br /> <label>f. Do you have any affiliates?</label>
					</div>
					<div>
						<div class="col-md-3">
							<input type="radio" id="yes" name="qf" value="qfyes"
								${mybean.field15[0]} checked="checked" />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="qf" value="qfno"
								${mybean.field15[1]} /> No
						</div>


					</div>

					<div class="col-md-12" id="qfShow" style="display: block;">

						<div class="col-md-12">
							<br /> <label for="name_of_financial_institation">For
								our affiliates to market you</label>
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
									${mybean.field16[0]} checked="checked" />Yes
							</div>
							<div class="col-md-3">
								<input type="radio" id="no" name="r61" value="61no"
									${mybean.field16[1]} /> No
							</div>
							<div id="r61yes" class="desc6">
								<div class="col-md-1">
									<input type="radio" name="r62" value="yes" ${mybean.field17[0]} />
									Yes
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
								${mybean.field18[0]} checked="checked" />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r71" value="71no"
								${mybean.field18[1]} /> No
						</div>
						<div id="r71yes" class="desc7">
							<div class="col-md-1">
								<input type="radio" name="r72" value="yes" ${mybean.field19[0]} />
								Yes
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
					<br />

					<!--phone-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Phone
							number </label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="phone" name="phoneNumber" value="${mybean.field20}" required />
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />

					<!--website-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Online
							website </label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="website" name="onlineWebsite" value="${mybean.field21}"
							required />
					</div>
				</div>



				<div class="form-group col-md-12">
					<br />
					<!--who we are-->
					<div class="col-md-2">
						<label for="name">Who is providing this notice? </label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="days" name="whoProvidingNotice" value="${mybean.field22}" />
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
							value="${mybean.field30}" />
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--days-->
					<div class="col-md-10">
						<label for="name"><span class="star"> * </span>How to
							collect personal information? </label>
					</div>

					<div class="col-md-10">
						<label for="income">Collect personal information when</label>
					</div>


					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen" value="openAccount"
								${mybean.field23[0]} /> <label for="income">Open an
								account</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="depositMoney" /> <label for="income"
								${mybean.field23[1]}>Deposit money</label>
						</div>

						<div class="col-md-6">

							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellWhereSendMoney" ${mybean.field23[2]} /> <label
								for="income">Tell us where to send the money</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen" value="useCard"
								${mybean.field23[3]} /> <label for="income">Use
								credit/debit card</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen" value="payBill"
								${mybean.field23[4]} /> <label for="income">Pay your
								bills</label>
						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="seekFinancialTaxAdvice" ${mybean.field23[5]} /> <label
								for="income">Seek financial or tax advice</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="applyForInsurance" ${mybean.field23[6]} /> <label
								for="income">Apply for insurance</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="payInsurancePremium" /> <label for="income"
								${mybean.field23[7]}>Pay insurance premiums</label>
						</div>

						<div class="col-md-6">

							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="directUsSellSecurities" /> <label for="income"
								${mybean.field23[8]}>Direct us to sell your securities</label>

						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="sellSecurities" ${mybean.field23[9]} /> <label
								for="income">Sell securities to us</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="buySecurities" ${mybean.field23[10]} /> <label
								for="income">Buy securities from us</label>
						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="seekAdviceInvestments" ${mybean.field23[11]} /> <label
								for="income">Seek advice about your investments</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="directUsBuySecurities" ${mybean.field23[12]} /> <label
								for="income">Direct us to buy securities</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="fileAnInsuranceClaim" ${mybean.field23[13]} /> <label
								for="income">File an insurance claim</label>
						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="makeDepositsWithdrawalsFromAccount" ${mybean.field23[14]} />
							<label for="income">Make deposits or withdrawals from
								your account</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="provideEmploymentInformation" ${mybean.field23[15]} /> <label
								for="income">Provide employment information</label>

						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveUsIncomeInformation" ${mybean.field23[16]} /> <label
								for="income">Give us your income information</label>
						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="enterIntoInvestmentAdvisoryContract" ${mybean.field23[17]} />
							<label for="income">Enter into an investment advisory
								contract</label>
						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveEmploymentHistory" ${mybean.field23[18]} /> <label
								for="income">Give us your employment history</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="provideAccountInformation" ${mybean.field23[19]} /> <label
								for="income">Provide account information</label>

						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellAboutInvestmentRetirementEarnings"
								${mybean.field23[20]} /> <label for="income">Tell us
								about your investment or retirement earnings</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="applyFinancing" ${mybean.field23[21]} /> <label
								for="income">Apply for financing</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen" value="applyLease"
								${mybean.field23[22]} /> <label for="income">Apply for a
								lease</label>
						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellAboutInvestmentRetirementPortfolio" /> <label
								for="income" ${mybean.field23[23]}>Tell us about your
								investment or retirement portfolio</label>

						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="payUsByCheck" /> <label for="income"
								${mybean.field23[24]}>Pay us by check</label>
						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveWageStatement" ${mybean.field23[25]} /> <label
								for="income">Give us your wage statements</label>
						</div>

						<div class="col-md-6">

							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="giveContactInformation" ${mybean.field23[26]} /> <label
								for="income">Give us your contact information</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="makeWireTransfer" ${mybean.field23[27]} /> <label
								for="income">Make a wire transfer</label>

						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="tellWhoReceivesMoney" ${mybean.field23[28]} /> <label
								for="income">Tell us who receives the money</label>
						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="provideMortgageInformation" ${mybean.field23[29]} /> <label
								for="income">Provide your mortgage information</label>

						</div>

					</div>

					<div class="col-md-12">
						<br />
						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="showDriverLicense" ${mybean.field23[30]} /> <label
								for="income">Show your driver's license</label>

						</div>

						<div class="col-md-3">
							 <input class="6checkbox" type="checkbox" name="informationWhen" value="applyLoan"
								${mybean.field23[31]} /> <label for="income">Apply for a
								loan</label>


						</div>

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="showGovernmentIssuedId" /> <label for="income"
								${mybean.field23[32]}>Show your government-issued ID</label>

						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-6">
							 <input class="6checkbox" type="checkbox" name="informationWhen"
								value="orderCommodityFuturesOptionTrade" ${mybean.field23[33]} />
							<label for="income">Order a commodity futures or option
								trade</label>
						</div>

					</div>

					<div class="col-md-12">
						<br /> <input type="radio" name="q10"
							value="informationFromOtherCompanies" ${mybean.field24[0]} />
						<label for="income">Collect personal information from
							other companies</label>
					</div>

					<div class="col-md-12">
						<br /> <input type="radio" name="q10"
							value="informationFromCreditBureauEtc" ${mybean.field24[1]} />
						<label for="income">Collect personal information from
							others, e.g. credit bureaus, affiliates, or other companies</label>
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
						<%-- <input size="80" maxlength="64" type="text" class="form-control"
							id="whyCantLimitShare" name="whyCantLimitShare" value="${mybean.field25}" /> --%>

						<textarea class="form-control" rows="3" cols="80"
							id="whyCantLimitShare" name="whyCantLimitShare"
							required="required"><c:out value="${mybean.field25}" /></textarea>
					</div>
				</div>


				<div id="affList">
					<div class="form-group col-md-12">
						<br />
						<!--affiliates information-->
						<div class="col-md-12">
							<label for="name"><span class="star"> * </span>Affiliates
								Information</label>
						</div>

						<div class="col-md-2">
							<label for="name"><span class="star"> * </span>Common
								Corporate Identity of Financial Institution(Name) </label>
						</div>


						<div class="col-md-10">
							<input size="78" maxlength="62" type="text" class="form-control"
								id="affiliatesName" name="affiliatesName" value="${mybean.field26}" />
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
									value="${mybean.field27}" /></textarea>
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
									value="${mybean.field28}" /></textarea>
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
									value="${mybean.field29}" /></textarea>
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
									value="${mybean.field30}" /></textarea>
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
							checked="checked" ${mybean.field31[0]} checked="checked" />Yes
					</div>
					<div class="col-md-3">
						<input type="radio" id="no" name="jointMkt" value="jointMktno"
							${mybean.field31[1]} /> No
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
								id="jointMarketing" name="jointMarketing" required><c:out
									value="${mybean.field32}" /></textarea>

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
							name="otherInfo"><c:out value="${mybean.field33}" /></textarea>
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
					<input type="hidden" id="thisField" name="version" value="1">

					<div class="col-md-2" style="text-align: center">
						<button type="reset" value="Reset" class="btn btn-default "
							onclick="this.form.reset();">Reset</button>
					</div>


				</div>

			</form>

			<form method="post" action="UploadServlet"
				enctype="multipart/form-data" style="float: right; margin-top: -80px">
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

	$("input[name^='r']").click(function() {

		var test = $(this).val();
		//alert(test.substring(0,1));

		$("div.desc" + test.substring(0, 1)).hide();

		$("#r" + test).show();
	});

	$("input[name='qf']").click(
			function() {

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

		setCookie("form", JSON.stringify({
			version : "1",
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
			phoneNumber : form.phoneNumber.value,
			onlineWebsite : form.onlineWebsite.value,
			whoProvidingNotice : form.whoProvidingNotice.value,
			howWeProtectPersonalInfo : form.howWeProtectPersonalInfo.value,
			informationWhen : infoWhn,
			q10 : form.q10.value,
			whyCantLimitShare : form.whyCantLimitShare.value,
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
		//getCookie("form");
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