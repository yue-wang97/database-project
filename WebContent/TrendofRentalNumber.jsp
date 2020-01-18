<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="Servlet.*"%>
<%@page import="entity.*"%>
<%@page import="Dao.*"%>
<%@page import="Service.*"%>
<%@page import="Database.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<head>
<title>Trend of Rental Number</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<%
String month1 = request.getParameter("month1");
String day1 = request.getParameter("day1");
String month2 = request.getParameter("month2");
String day2 = request.getParameter("day2");
if(month1==null||month1.equals("")){
	month1 = "1";
}
if(day1==null||day1.equals("")){
	day1 = "1";
}
if(month2==null||month2.equals("")){
	month2 = "1";
}
if(day2==null||day2.equals("")){
	day2 = "1";
}
System.out.println(month1+day1+month2+day2);
%>
<script>
        (function () {
          var js;
          if (typeof JSON !== 'undefined' && 'querySelector' in document && 'addEventListener' in window) {
            js = 'js/jquery.2.0.3.min.js';
          } else {
            js = 'js/jquery.1.10.2.min.js';
          }
          document.write('<script src="' + js + '"><\/script>');
        }());
        function getVal1(){ 
        	  var month1=document.getElementById('month1').value;
        	  var day1=document.getElementById('day1').value;
        	  var month2=<%=month2%>;
        	  var day2=<%=day2%>;
        	  
        	  var url = "TrendofRentalNumber.jsp?month1="+month1+"&day1="+day1+"&month2="+month2+"&day2="+day2;
        	  window.location = url;
        	  }
        function getVal2(){ 
        	var month2=document.getElementById('month2').value;
      	    var day2=document.getElementById('day2').value;
      	    var month1=<%=month1%>;
      	    var day1=<%=day1%>;
      	  
      	    var url = "TrendofRentalNumber.jsp?month1="+month1+"&day1="+day1+"&month2="+month2+"&day2="+day2;
      	    window.location = url;
      	 }
 </script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
		
<!-- agile-grid-right -->
<script src="js/graph.js"></script>
<!-- //agile-grid-right -->
</head>
<body class="dashboard-page">

	<nav class="main-menu">
		<ul>
			<li>
				<a href="index.jsp">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Dashboard
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					Trend Analysis
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="TrendofRentalNumber.jsp">
					Trend of Rental Number
					</a>
					</li>
					<li>
					<a class="subnav-text" href="TrendofAverageDuration.jsp">
					Trend of Average Duration
					</a>
					</li>
					<li>
					<a class="subnav-text" href="TrendofSubscriberNumber.jsp">
					Trend of Subscriber Number
					</a>
					</li>
					<li>
					<a class="subnav-text" href="TrendofGender.jsp">
					Trend of Gender
					</a>
					</li>
					<li>
					<a class="subnav-text" href="TrendofAge.jsp">
					Trend of Age
					</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					Hot choices
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="MostStart.jsp">
					Most Start
					</a>
					</li>
					<li>
					<a class="subnav-text" href="MostEnd.jsp">
					Most End
					</a>
					</li>
					<li>
					<a class="subnav-text" href="MostBicycleUsage.jsp">
					Most Bicycle Usage
					</a>
					</li>
				</ul>
			</li>
				<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					Usage Analysis
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="AverageSpeedofAge.jsp">
					Average Speed of Age
					</a>
					</li>
					<li>
					<a class="subnav-text" href="AverageDistanceofMonth.jsp">
					Average Distance of Month
					</a>
					</li>
					<li>
					<a class="subnav-text" href="AverageUsageofGender.jsp">
					Average Usage of Gender
					</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="TravelEstimation.jsp">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
						Travel Estimation
					</span>
				</a>
			</li>
			
		<ul class="logout">
			<li>
			<a href="login.jsp">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		</ul>
	</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>			</a>		</nav>
	<!--	<section class="title-bar">
			<div class="logo">
				<h1><a href="index.jsp"><img src="images/logo.png" alt="" />Colored</a></h1>
			</div>
			<div class="full-screen">
				<section class="full-top">
					<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
				</section>
			</div>
			<div class="w3l_search">
				<form action="#" method="post">
					<input type="text" name="search" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" required="">
					<button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
				</form>
			</div>
			<div class="header-right">
				<div class="profile_details_left">
					<div class="header-right-left">
						
						<ul class="nofitications-dropdown">
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
								<ul class="dropdown-menu anti-dropdown-menu w3l-msg">
									<li>
										<div class="notification_header">
											<h3>You have 3 new messages</h3>
										</div>
									</li>
									<li><a href="#">
									   <div class="user_img"><img src="images/1.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
									</div>
									   <div class="clearfix"></div>	
									</a></li>
									<li class="odd"><a href="#">
										<div class="user_img"><img src="images/2.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
									</div>
									  <div class="clearfix"></div>	
									</a></li>
									<li><a href="#">
									   <div class="user_img"><img src="images/3.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
									</div>
									   <div class="clearfix"></div>	
									</a></li>
									<li>
										<div class="notification_bottom">
											<a href="#">See all messages</a>
										</div> 
									</li>
								</ul>
							</li>
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
								<ul class="dropdown-menu anti-dropdown-menu agile-notification">
									<li>
										<div class="notification_header">
											<h3>You have 3 new notifications</h3>
										</div>
									</li>
									<li><a href="#">
										<div class="user_img"><img src="images/2.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
									</div>
									  <div class="clearfix"></div>	
									 </a></li>
									 <li class="odd"><a href="#">
										<div class="user_img"><img src="images/1.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
									 </div>
									   <div class="clearfix"></div>	
									 </a></li>
									 <li><a href="#">
										<div class="user_img"><img src="images/3.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
									 </div>
									   <div class="clearfix"></div>	
									 </a></li>
									 <li>
										<div class="notification_bottom">
											<a href="#">See all notifications</a>
										</div> 
									</li>
								</ul>
							</li>	
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
								<ul class="dropdown-menu anti-dropdown-menu agile-task">
									<li>
										<div class="notification_header">
											<h3>You have 8 pending tasks</h3>
										</div>
									</li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Database update</span><span class="percentage">40%</span>
											<div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											<div class="bar yellow" style="width:40%;"></div>
										</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
										   <div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											 <div class="bar green" style="width:90%;"></div>
										</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
											<div class="clearfix"></div>	
										</div>
									   <div class="progress progress-striped active">
											 <div class="bar red" style="width: 33%;"></div>
									</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
										   <div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											 <div class="bar  blue" style="width: 80%;"></div>
										</div>
									</a></li>
									<li>
										<div class="notification_bottom">
											<a href="#">See all pending tasks</a>
										</div> 
									</li>
								</ul>
							</li>	
							<div class="clearfix"> </div>
						</ul>
					</div>	
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span class="prfil-img"><i class="fa fa-user" aria-hidden="true"></i></span> 
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
									<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
									<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</section>-->
		
		<%  
	//直接调用后台数据 
    UserServlet us=new UserServlet();  
%>

		<!-- Single button -->
		<div class="main-grid">
			<div class="agile-grids">	
				
				<div class="chart-heading">
					<h2>Trend of Rental Number</h2>
				</div>
	
				<!-- agile-grid-left -->
				<div class="col-md-6 agile-grid-left">
					<div class="main">
						
						<h3 id="line">Tendency of 2016</h3>
						<table id='myTable1'>
							<thead>
								<tr>
									<th></th>
									<th>Jan</th>
									<th>Feb</th>
									<th>Mar</th>
									<th>Apr</th>
									<th>May</th>
									<th>Jun</th>
									<th>Jul</th>
									<th>Aug</th>
									<th>Sep</th>
									<th>Oct</th>
									<th>Nov</th>
									<th>Dec</th>
								</tr>
							</thead>
								<tbody>
								<tr>
									<th>2016</th>
									<%
									int[] monthnum= us.rntPerMonthIn2016();
									for(int i=0;i<monthnum.length;i++){  
									%>
									<td><%=monthnum[i] %></td>
									<%}%>
								</tr>
								
							</tbody>
						</table>
	
						<h3 id="line">Hour Tendency</h3>
<!--<form method="POST" action=".">
<div class="bs-example" data-example-id="single-button-dropdown">
    <div class="btn-group">
      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Month <span class="caret"></span></button>
      <ul class="dropdown-menu">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li><a href="#">7</a></li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li><a href="#">10</a></li>
        <li><a href="#">11</a></li>
        <li><a href="#">12</a></li>
      </ul>
    </div>
    <div class="btn-group">
      <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Day <span class="caret"></span></button>
      <ul class="dropdown-menu">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li><a href="#">7</a></li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li><a href="#">10</a></li>
        <li><a href="#">11</a></li>
        <li><a href="#">12</a></li>
        <li><a href="#">13</a></li>
        <li><a href="#">14</a></li>
        <li><a href="#">15</a></li>
        <li><a href="#">16</a></li>
        <li><a href="#">17</a></li>
        <li><a href="#">18</a></li>
        <li><a href="#">19</a></li>
        <li><a href="#">20</a></li>
        <li><a href="#">21</a></li>
        <li><a href="#">22</a></li>
        <li><a href="#">23</a></li>
        <li><a href="#">24</a></li>
        <li><a href="#">25</a></li>
        <li><a href="#">26</a></li>
        <li><a href="#">27</a></li>
        <li><a href="#">28</a></li>
        <li><a href="#">29</a></li>
        <li><a href="#">30</a></li>
        <li><a href="#">31</a></li>
      </ul>
    </div>
      <button type="submit" class="btn btn-default"><a href="#">select</a></button>
    </div>
  </form>-->
<input type="int" class="input-small" id="month1" name="" placeholder="Month">
  <input type="int" class="input-small" id="day1" name="" placeholder="Day">
  <input type="button" onclick="getVal1()" value="select" />
						<table id='myTable2'>
							<thead>
								<tr>
									<th></th>
									<th>0</th>
									<th>1</th>
									<th>2</th>
									<th>3</th>
									<th>4</th>
									<th>5</th>
									<th>6</th>
									<th>7</th>
									<th>8</th>
									<th>9</th>
									<th>10</th>
									<th>11</th>
									<th>12</th>
									<th>13</th>
									<th>14</th>
									<th>15</th>
									<th>16</th>
									<th>17</th>
									<th>18</th>
									<th>19</th>
									<th>20</th>
									<th>21</th>
									<th>22</th>
									<th>23</th>
									<th>24</th>
								</tr>
							</thead>
								<tbody>
								
								<tr>
									<th><%=month1%><%="/" %><%=day1%><%="/2016" %></th>
									<%
									System.out.println(month1+day1);
									int[] hourofday= us.rntPerHourInSomeday(2016, Integer.valueOf(month1), Integer.valueOf(day1));
									for(int i=0;i<hourofday.length;i++){  
									%>
									<td><%=hourofday[i] %></td>
									<%}%>
								</tr>
							</tbody>
						</table>

					
					</div>
				</div>
				<!-- //agile-grid-left -->
								<!-- agile-grid-left -->
				<div class="col-md-6 agile-grid-right">
					<div class="main">
						
						

<h3 id="line">Tendency by Seasons</h3>
						
						<table id='myTable3'>
							<thead>
								<tr>
									<th></th>
									<th>1</th>
									<th>2</th>
									<th>3</th>
								</tr>
							</thead>
								<tbody>
								<tr>
									<th>Spring</th>
									<td><%=monthnum[2] %></td>
									<td><%=monthnum[3] %></td>
									<td><%=monthnum[4] %></td>
								</tr>
								<tr>
									<th>Summer</th>
									<td><%=monthnum[5] %></td>
									<td><%=monthnum[6] %></td>
									<td><%=monthnum[7] %></td>
								</tr>	
								<tr>
									<th>Fall</th>
									<td><%=monthnum[8] %></td>
									<td><%=monthnum[9] %></td>
									<td><%=monthnum[10] %></td>							
								</tr>	
								<tr>
									<th>Winter</th>
									<td><%=monthnum[11] %></td>
									<td><%=monthnum[0] %></td>
									<td><%=monthnum[1] %></td>
								</tr>	
							</tbody>
						</table>

						<h3 id="line">Week Tendency</h3>
						<form class="form-inline" action="/Trend of Rental Number" method="post">
 <input type="int" class="input-small" id="month2" name="" placeholder="Month">
  <input type="int" class="input-small" id="day2" name="" placeholder="Day">
  <input type="button" onclick="getVal2()" value="select" />
</form>
						<table id='myTable4'>
							<thead>
								<tr>
									<th></th>
									<th>Mon</th>
									<th>Tue</th>
									<th>Wed</th>
									<th>Thu</th>
									<th>Fri</th>
									<th>Sat</th>
									<th>Sun</th>
								</tr>
							</thead>
								<tbody>
								<tr>
								<th>Week of <%=month2 %>/<%=day2 %></th>
							<%
							int[] dayofweek = us.rntPerDayInSomeweek(2016, Integer.valueOf(month2), Integer.valueOf(day2));
							for(int i=0;i<dayofweek.length;i++){  
							%>
							<td><%=dayofweek[i] %></td>
							<%}%>
							</tr>
										
							</tbody>
						</table>
					</div>
				</div>
				<!-- //agile-grid-left -->



	</section>
	<!-- gv-chart -->

	<script type="text/javascript" src="js/jquery.gvChart.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				googleLoaded.done( function(){
					$('#myTable1').gvChart({
						chartType: 'LineChart',
						gvSettings: {
							vAxis: {title: 'Rental Number'},
							hAxis: {title: 'Month'},
							height: 300
							}
					});
					
					
					$('#myTable2').gvChart({
						chartType: 'LineChart',
						gvSettings: {
							vAxis: {title: 'Rental Number'},
							hAxis: {title: 'Hour'},
							height: 300
							}
					});
					
					$('#myTable3').gvChart({
						chartType: 'LineChart',
						gvSettings: {
							vAxis: {title: 'Rental Number'},
							hAxis: {title: 'Month'},
							height: 300
							}
					});
					
					
					$('#myTable4').gvChart({
						chartType: 'LineChart',
						gvSettings: {
							vAxis: {title: 'Rental Number'},
							hAxis: {title: 'Day'},
							height: 300
							}
					});
					
				});
			});
		</script>
		<!-- //gv-chart -->
		<!-- //agile-grid-right -->
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>
