<!-- Team 1 -->
<!-- 01/15/2015 -->
<!-- Task 7-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title and other stuffs -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700'
	rel='stylesheet' type='text/css'>

<link href="<%=basePath%>style/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="<%=basePath%>style/font-awesome.css">
<link rel="stylesheet" href="<%=basePath%>style/flexslider.css">
<link rel="stylesheet" href="<%=basePath%>style/prettyPhoto.css">
<link href="<%=basePath%>style/style.css" rel="stylesheet">
<link href="<%=basePath%>style/bootstrap-responsive.css"
	rel="stylesheet">

<link rel="shortcut icon" href="<%=basePath%>/img/favicon/favicon.png">
<title>Mutual Fund</title>
<style>
.h7 {
	margin: 1px 0px;
	padding: 1px 0px;
	font-weight: 600;
	font-size: 30px;
	line-height: 70px;
	margin-top: 40px;
}
</style>

</head>

<body>
	<!-- Navbar starts -->

		<!-- Navigation bar is one table cell down the left side -->
				<div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<c:choose>
								<c:when test="${ (empty title) }">
									<li><a href="login.do">Login</a></li>
								</c:when>
								<c:otherwise>
									<li><%=request.getAttribute("title")%></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
		<!-- Navbar ends -->

	<div class="content">
			<!-- JS --> <script src="<%=basePath%>js/jquery.js"></script> <script
				src="<%=basePath%>js/bootstrap.js"></script> <!-- Bootstrap --> <script
				src="<%=basePath%>js/filter.js"></script> <!-- Filter JS --> <script
				src="<%=basePath%>js/jquery.carouFredSel-6.1.0-packed.js"></script>
			<!-- CarouFredSel --> <script
				src="<%=basePath%>js/jquery.flexslider-min.js"></script> <!-- Flexslider -->
			<script src="<%=basePath%>js/jquery.isotope.js"></script> <!-- Isotope -->
			<script src="<%=basePath%>js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
			<script src="<%=basePath%>js/jquery.tweet.js"></script> <!-- Tweet -->
			<script src="<%=basePath%>js/custom.js"></script> <!-- Main js file -->
			<div class="matter">
				<div class="container-fluid">
					<p align="center">
						<span class="h7">Welcome to Carnegie Financial Service</span>
					</p>
					<br>
					<c:forEach var="error" items="${errors}">
						<h5 style="color: red; text-align: center">${error}</h5>
					</c:forEach>
				</div>
			</div>

			<form method="post" action="DownloadServlet">
				<div class="well login-register">
					<br>
					<h5>Test Form</h5>
					<hr />
					<br>
					<!-- Login form -->
					<!-- Email -->
					<div class="control-group">
						<label class="control-label">UserName</label>
						<div class="controls">
							<input type="text" name="username" value="${mybean.field1}" />
						</div>
					</div>
					<!-- Name -->
					<div class="control-group">
						<label class="control-label">Name</label>
						<div class="controls">
							<input type="text" name="name" value="${mybean.field2}" />
						</div>
					</div>
					<!-- Password -->
					<div class="control-group">
						<label class="control-label">SurName</label>
						<div class="controls">
							<input type="text" name="surname" value="${mybean.field3}" />
						</div>
					</div>
					<!-- Phone Number -->
					<div class="control-group">
						<label class="control-label">Phone Number</label>
						<div class="controls">
							<input type="text" name="phone" value="${mybean.field4}" />
						</div>
					</div>
					<!-- Salary -->
					<div class="control-group">
						<label class="control-label">Salary</label>
						<div class="controls">
							<input type="text" name="salary" value="${mybean.field5}" />
						</div>
					</div>
					<input type="checkbox" name="s1_t1" value="0" ${mybean.field6[0]}>View <br> <input
						type="checkbox" name="s1_t1" value="1" ${mybean.field6[1]}>Add <br> <input
						type="checkbox" name="s1_t1" value="2" ${mybean.field6[2]}>Edit <br> <input
						type="checkbox" name="s1_t1" value="3" ${mybean.field6[3]}>Delete<br>
					<input
						type="submit" name="button" class="btn btn-danger"
						value="Save As XMl" />
				</div>
			</form>
	</div>
	<form method="post" action="UploadServlet"
        enctype="multipart/form-data">
        Select file to upload: <input type="file" name="file" size="60" /><br />
        <br /> <input type="submit" value="Upload" />
    </form>
	<hr />

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="clearfix"></div>
	<footer>
		<div class="bor"></div>
	</footer>
</body>
</html>

