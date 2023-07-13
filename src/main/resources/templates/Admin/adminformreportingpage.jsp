<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RentoCar</title>
<link th:href="@{/css/menubar.css}" rel="stylesheet">
<link th:href="@{/css/sidebar.css}" rel="stylesheet">
<link th:href="@{/css/reporting.css}" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
<div class="menu-bar">
	<div class="logo-menubar"><img src="images/logo.png" ></div>
	<div class="navigation">
		<table>
			<tr>
				<td class="nav-items"><a th:href="@{/home}">Home</a></td>
				<td>|</td>
				<td class="nav-items"><a th:href="@{/aboutus}">About Us</a></td>
			</tr>
		</table>
	</div>
	<div class="profile">
		<div class="nama-user"><span th:text="${session.username}"></span></div>
		<div class="profile-picture"><img src="images/profilepicture.png"></div>
		<div class="dropdown">
			<button class="dropdown-button"><i class="fa fa-caret-down"></i></button>
			<div class="dropdown-content">
				<a th:href="@{/profile}">Profile</a> 
				<a th:href="@{/logout}">Log Out</a>
			</div>
		</div>
	</div>
</div>
<div class="content-container">
	<div class="menu-sidebar">
		<div class="head">Admin Function</div>
		<div class="header">Vehicle</div>
		<div class="nav-items2"><a th:href="@{/viewAllVehicle}">Manage Vehicle</a></div> 
		<div class="nav-items2"><a th:href="@{/vehiclecondition}">Vehicle Condition</a></div> 

		<div class="header">User</div>
		<div class="nav-items2"><a th:href="@{/viewAllAdmin}">Manage Admin</a></div>
		<div class="nav-items2"><a th:href="@{/viewAllStaff}">Manage Staff</a></div>
		
		<div class="header">Report</div>
		<div class="nav-items2"><a th:href="@{/getreport}">View Report</a></div>
		<div class="nav-items2"><a th:href="@{/viewAllFeedback}">View Feedback</a></div> 
	</div>
	<div class="content">
		<div class="container">
			<div class=rightbox>
				<div class="rightboxcontent">
					<div class=address>
						<div class="line"></div>
						<div class=addressContent>
							<form action="addreporting" method="post">
							<table class="addressTab" width=100%>
								<tr>
									<td colspan="2" width="90%"><h3>Daily Sales</h3></td>
									<td colspan="1" align="right"></td>
								</tr>

								<tr>
									<td colspan="4" style="padding: 15px 15px 15px 0px">
									<label>Daily Sales :</label>
									<input type="text" id="dailysales" name="Dsales"></td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">New Customer :
										<input type="text" id="ncust" name="NDcust">
									</td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">Active Customer :
										<input type="text" id="acust" name="ADcust">
									</td>
								</tr>

								<tr>
									<td colspan="1" width=33% style="padding: 15px 15px 15px 0px">
										VS 00:00-22:00<br>Yesterday</td>
								</tr>
							</table>

						</div>
					</div>

					<div class=payment>
						<div class="line"></div>
						<div class=paymentContent>
							<table class="addressTab" width=100%>
								<tr>
									<td colspan="2" width="90%"><h3>Monthly Report</h3></td>
									<td colspan="1" align="right"></td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">
										<label>Monthly Sales :</label>
										<input type="text" id="monthsales" name="Msales">
									</td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">New Customer :
										<input type="text" id="ncust" name="NMcust">
									
									</td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">Active Customer :
										<input type="text" id="acust" name="AMcust">
									</td>
								</tr>

							</table>
						</div>
					</div>
				</div>
			</div>
			<div class=leftbox>
				<div class=profile2>
					<div class=profileContent>
						<table class="profileTab" width="100%">

							<tr>
								<td style="text-align: center" colspan="3">
									<h1>Employee of the Month</h1> <img src="images/profileimage.png" width="200" height="200" alt="profileImage" />
								</td>
							</tr>

							<tr>
								<td style="text-align: center" colspan="3"> <h3>M Shafiq bin Sahdan</h3></td>
							</tr>

							<tr>
								<td colspan="2" width="90%">
									<h3>Achievements :</h3>
									<input type="text" id="Achievements" name="achievements"><br><br><br><br><br><br><br><br>
								</td>
								<button>Save</button>
							</tr>

						</table></form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>