<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RentoCar</title>
<link th:href="@{/css/menubar.css}" rel="stylesheet">
<link th:href="@{/css/ProfileStyle.css}" rel="stylesheet">
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
				<td>|</td>
				<td class="nav-items"><a th:href="@{/bookingStaff}">Book A Car</a></td> 
			</tr>
		</table>
	</div>
	<div class="profile">
		<div class="nama-user"><span th:text="${session.username}"></span></div>
		<div class="profile-picture"><img src="images/profilepicture.png"></div>
		<div class="dropdown">
			<button class="dropdown-button"><i class="fa fa-caret-down"></i></button>
			<div class="dropdown-content">
				<a th:href="@{/profileStaff}">Profile</a> 
				<a th:href="@{/logout}">Log Out</a>
			</div>
		</div>
	</div>
</div>

    <div class=content>
        <div class="container">
    <div class=leftbox>
        <div class=profile2>
            <div class=profileContent>
            <form id="custProfile" action="viewUpdateProfileStaff" method="post">
            <table class="profileTab"  width ="100%">
            
            <tr>
            <td style="text-align: center" colspan="3">
            <img src="images/profileImage.png" width="200" height="200" alt="profileImage" />
            </td>
            </tr>
            
            <tr>
            <td colspan="3">
            <h3>My Profile</h3>
            </td>
            </tr>
            
            <tr>
            <td colspan="2" width ="70%">
            <p th:text="${detailS[0].fullname}"></p>
            </td>
            <td colspan="1" width ="20%">
            <p th:text="${detailS[0].birthdate}"></p>
            </td>
            </tr>
            
            <tr>
                <td width ="10%">+60</td>
            <td  colspan="3">
            <p th:text="${detailS[0].phone_no}"></p>
            </td>
            </tr>
            
            <tr>
            <td colspan="3">
            <p th:text="${detailS[0].email}"></p>
            </td>
            </tr>
            
            <tr>
            <td colspan="3" style="text-align: center">
               
                    <input class="button" type="submit" value="Update">
                
            
            </td>
            </tr>
            
            </table>
            </form>
            
            </div>
            
            
            </div>
        </div>
        
        <div class=rightbox> 
            <div class="rightboxcontent">
                <div class= address>
                    
                    <div class="line"></div>
                        <div class=addressContent>
                
                            
                                <table class="addressTab"  width=100% >
                                    <tr>
                                    <td colspan="2" width ="90%">
                                    <h3>My address </h3>
                                    </td>
                                    <td colspan="1" align= "right">
                                        <div>
                                            <form action="viewUpdateAddressStaff" method="post">
                                                <input class="button" type="submit"  value="Update" />
                                            </form>
                                            
                                        </div>
                                        
                                        
                                    </td>
                                    </tr>
                                
                                    <tr>
                                    <td th:text="${detailS[0].addressL1}" colspan="3" style="padding: 15px 15px 15px 0px "></td>
                                    </tr>
                                    
                                    <tr>
                                    <td th:text="${detailS[0].addressL2}" colspan="3" style="padding: 15px 15px 15px 0px">
                                    </td>
                                    </tr>
                                    
                                    <tr>
                                    <td th:text="${detailS[0].addressL3}" colspan="3" style="padding: 15px 15px 15px 0px">
                                    </td>
                                    </tr>
                                    
                                    <tr>
                                    <td th:text="${detailS[0].postcode}" colspan="1" width=30% style="padding: 15px 15px 15px 0px">
                                    
                                    </td>
                                    <td th:text="${detailS[0].city}" colspan="1" width=40% style="padding: 15px 15px 15px 0px" align="center">
                                    
                                    </td>
                                    <td th:text="${detailS[0].state}" colspan="1" width=40% style="padding: 15px 15px 15px 0px" align="right">
                                     </td>
                                    </tr>
                                </table>			
                
                            
                        </div>
                </div>
        
                <div class=payment>
                    <div class="line"></div>
                    <div class=paymentContent >
                        
                            <table class="paymentTab"  width=100%>
                                <tr>
                                <td colspan="2" width=90%>
                                <h3>Account</h3>
                                </td>
                                <td colspan="1" align="right">
                                    
                                    
                                </td>
                                </tr>
                                
                                <tr>
                                <td width=50% style="padding: 15px 15px 15px 0px" align="center">
                                    <b>Username </b>
                                </td>
                                <td colspan="2" style="padding: 15px 15px 15px 0px" th:text="${detailS[0].username}">
                                
                                </td>
                                </tr>
                            </table>
                
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    </div>

</body>
</html>