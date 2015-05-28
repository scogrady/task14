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
			<form class="form-inline" method="POST" action="DownloadServlet">
				<div class="form-group col-md-12">
					<br /> <br />

					<!--date-->
					<div class="col-md-2">
						<label for="insert_date"><span class="star"> * </span>Date</label>
					</div>
					<div class="col-md-10">
						<input size="80" maxlength="64" type="text" class="form-control"
							id="date" name="date" required value="${mybean.field1}"/>
						<script type="text/javascript">
							document.getElementById('date').value = Date();
						</script>

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
							id="name" name="bankName" required value=" ${mybean.field2}"/>
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
							${mybean.field4[0]} /> Customer
					</div>
					<div class="col-md-3">
						<input type="radio" name="whose" value="member"  ${mybean.field4[1]}/> Member
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
								${mybean.field5[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r11" value="11no" ${mybean.field5[1]}/> No
						</div>
						<div id="r11yes" class="desc1">
							<div class="col-md-1">
								<input type="radio" name="r12" value="yes" ${mybean.field6[0]}/> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r12" value="no" ${mybean.field6[1]}/> No
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
								${mybean.field7[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r21" value="21no" ${mybean.field7[1]}/> No
						</div>
						<div id="r21yes" class="desc2">
							<div class="col-md-1">
								<input type="radio" name="r22" value="yes" ${mybean.field8[0]}/> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r22" value="no" ${mybean.field8[1]}/> No
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
								${mybean.field9[0]}/>Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r31" value="31no" ${mybean.field9[1]}/> No
						</div>
						<div id="r31yes" class="desc3">
							<div class="col-md-1">
								<input type="radio" name="r32" value="yes" ${mybean.field10[0]}/> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r32" value="no" ${mybean.field10[1]}/> No
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
								${mybean.field11[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r41" value="41no" ${mybean.field11[1]}/> No
						</div>
						<div id="r41yes" class="desc4">
							<div class="col-md-1">
								<input type="radio" name="r42" value="yes" ${mybean.field12[0]}/> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r42" value="no" ${mybean.field12[1]}/> No
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
								${mybean.field13[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r51" value="51no" ${mybean.field13[1]}/> No
						</div>
						<div id="r51yes" class="desc5">
							<div class="col-md-1">
								<input type="radio" name="r52" value="yes" ${mybean.field14[0]}/> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r52" value="no" ${mybean.field14[1]}/> No
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
								${mybean.field15[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="qf" value="qfno" ${mybean.field15[1]}/> No
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
									${mybean.field16[0]} />Yes
							</div>
							<div class="col-md-3">
								<input type="radio" id="no" name="r61" value="61no" ${mybean.field16[1]}/> No
							</div>
							<div id="r61yes" class="desc6">
								<div class="col-md-1">
									<input type="radio" name="r62" value="yes" ${mybean.field17[0]}/> Yes
								</div>
								<div class="col-md-1">
									<input type="radio" name="r62" value="no" ${mybean.field17[1]}/> No
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
								${mybean.field18[0]} />Yes
						</div>
						<div class="col-md-3">
							<input type="radio" id="no" name="r71" value="71no" ${mybean.field18[1]}/> No
						</div>
						<div id="r71yes" class="desc7">
							<div class="col-md-1">
								<input type="radio" name="r72" value="yes" ${mybean.field19[0]}/> Yes
							</div>
							<div class="col-md-1">
								<input type="radio" name="r72" value="no" ${mybean.field19[1]}/> No
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
								id="phone" name="limitSharingPhoneNumber"  ${mybean.field20} required/>
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
							name="limitSharingOnlineWebsite" value="${mybean.field21}" required/>
					</div>

					<br>
					<div class="col-md-2">
						<br> <label for="name">Within how many days </label>
					</div>
					<div class="col-md-10">
						<br> <input size="80" maxlength="64" type="text"
							class="form-control" name="sharingWithinDays1" value="${mybean.field22}" required/>
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
							id="phone" name="phoneNumber" value="${mybean.field23}" required/>
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
							id="website" name="onlineWebsite" value="${mybean.field24}" required/>
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
							id="days" name="whoProvidingNotice" value="${mybean.field25}"/>
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
							id="days" name="howWeProtectPersonalInfo" value="${mybean.field26}"/>
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
							<input type="checkbox" name="informationWhen" value="openAccount" ${mybean.field27[0]}/>
							<label for="income">Open an account</label>
						</div>

						<div class="col-md-3">
							<input type="checkbox" name="informationWhen"
								value="depositMoney" ${mybean.field27[1]}/> <label for="income">Deposit
								money</label>
						</div>

						<div class="col-md-3">
							<input type="checkbox" name="informationWhen" value="applyLoan" ${mybean.field27[2]}/>
							<label for="income">Apply for a loan</label>
						</div>
					</div>


					<div class="col-md-12">
						<br />

						<div class="col-md-3">
							<input type="checkbox" name="informationWhen" value="useCard" ${mybean.field27[3]}/>
							<label for="income">Use credit/debit card</label>
						</div>

						<div class="col-md-3">
							<input type="checkbox" name="informationWhen" value="payBill" ${mybean.field27[4]}/>
							<label for="income">Pay your bills</label>
						</div>

					</div>

					<div class="col-md-12">
						<br /> <input type="radio" name="q10"
							value="information from other companies" checked="checked" ${mybean.field28[0]}/> <label for="income">Collect
							personal information from other companies</label>
					</div>

					<div class="col-md-12">
						<br /> <input type="radio" name="q10"
							value="information from credit bureau etc" ${mybean.field28[1]}/> <label
							for="income">Collect personal information from others,
							e.g. credit bureaus, affiliates, or other companies</label>
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
							name="whyCantLimitShare" required><c:out value="${mybean.field29}" /></textarea>
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
							value="will apply to everyone on account" checked="checked" ${mybean.field30[0]}"/> <label for="income">Your
							choices will apply to everyone on your account.</label>
					</div>

					<div class="col-md-12">
						<br /> <input type="radio"
							name="whtHappensLimitSharingJointAccount"
							value="will apply to everyone on account unless you tell otherwise" ${mybean.field30[1]}/>
						<label for="income">Your choices will apply to everyone on
							your account - unless you tell us otherwise.</label>
					</div>
				</div>



				<div class="form-group col-md-12">
					<br />
					<!--affiliates information-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Affiliates
						</label>
					</div>
					<div class="col-md-10">
						<textarea class="form-control" rows="3" cols="80"
							name="affiliates" required><c:out value="${mybean.field31}"/></textarea>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--nonaffiliate-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Nonaffiliates
						</label>
					</div>
					<div class="col-md-10">
						<textarea class="form-control" rows="3" cols="80"
							name="nonAffiliates" required><c:out value="${mybean.field32}"/></textarea>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--joint marketing-->
					<div class="col-md-2">
						<label for="name"><span class="star"> * </span>Joint
							marketing </label>
					</div>
					<div class="col-md-10">
						<textarea class="form-control" rows="3" cols="80"
							name="jointMarketing" required><c:out value="${mybean.field33}"/></textarea>
					</div>
				</div>

				<div class="form-group col-md-12">
					<br />
					<!--other important information-->
					<div class="col-md-2">
						<label for="name">Other important information </label>
					</div>
					<div class="col-md-10">
						<textarea class="form-control" rows="3" cols="80" name="otherInfo"><c:out value="${mybean.field34}"/></textarea>
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
					<input type="hidden" id="thisField" name="version" value="2">

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
		if ($('input[type=checkbox]:checked').length > 5) {
			$(this).prop('checked', false);
			alert("You can only select 5");
		}
	});


	$(document)
			.ready(
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
			version : "2",
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
			whoProvidingNotice : form.whoProvidingNotice.value,
			howWeProtectPersonalInfo : form.howWeProtectPersonalInfo.value,
			informationWhen : infoWhn,
			q10 : form.q10.value,
			whyCantLimitShare : form.whyCantLimitShare.value,
			whtHappensLimitSharingJointAccount : form.whtHappensLimitSharingJointAccount.value,
			affiliates : form.affiliates.value,
			nonAffiliates : form.nonAffiliates.value,
			jointMarketing : form.jointMarketing.value,
			otherInfo : form.otherInfo.value
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