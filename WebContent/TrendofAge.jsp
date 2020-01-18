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
	<title>Trend of Age</title>
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
	<div class="main-grid">
		<div class="agile-grids">

			<div class="chart-heading">
				<h2>Trend of Age</h2>
			</div>

			<!-- agile-grid-left -->
			<!-- agile-grid-left -->
			<div class="col-md-6 agile-grid-left">
				<div class="main">

					<h3 id="line">Rental Number of Different Age</h3>
					<table id='myTable2'>
						<caption> Histogram </caption>
						<thead>
						<tr>
							<th>2016</th>
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
						<%
							UserServlet us=new UserServlet();  
							int[][] agenum = us.agenumPerMonthIn2016();
							%>
						<tr>
							<th>Under 16</th>
							<%
							for(int i=0;i<agenum.length;i++){  
							%>
							<td><%=agenum[i][0] %></td>
							<%}%>
						</tr>
						<tr>
							<th>16 ~ 25</th>
							<%
							for(int i=0;i<agenum.length;i++){  
							%>
							<td><%=agenum[i][1] %></td>
							<%}%>
						</tr>	
						<tr>
							<th>25 ~ 45</th>
							<%
							for(int i=0;i<agenum.length;i++){  
							%>
							<td><%=agenum[i][2] %></td>
							<%}%>						
						</tr>	
						<tr>
							<th>45 ~ 65</th>
							<%
							for(int i=0;i<agenum.length;i++){  
							%>
							<td><%=agenum[i][3] %></td>
							<%}%>
						</tr>	
						<tr>
							<th>Older than 65</th>
							<%
							for(int i=0;i<agenum.length;i++){  
							%>
							<td><%=agenum[i][4] %></td>
							<%}%>
						</tr>	
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-6 agile-grid-right">
				<div class="main">

					<h3 id="pie">Meal/Female Rental Number</h3>
					<table id='myTable4'>
						<caption>Pie Diagram</caption>
						<thead>
						<%
							int[] agenum2 = us.agenumIn2016();
						%>
						<tr>
							<th>2016</th>
							<th>· ~ 16</th>
							<th>16 ~ 25</th>
							<th>25 ~ 45</th>
							<th>45 ~ 65</th>
							<th>65 ~ · </th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th>2016</th>
							<td><%=agenum2[0] %></td>
							<td><%=agenum2[1] %></td>
							<td><%=agenum2[2] %></td>
							<td><%=agenum2[3] %></td>
							<td><%=agenum2[4] %></td>

						</tr>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
</section>



<!-- footer -->

<!-- //footer -->

<!-- gv-chart -->

<script type="text/javascript" src="js/jquery.gvChart.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		googleLoaded.done( function(){
			$('#myTable2').gvChart({
				chartType: 'LineChart',
				gvSettings: {
					vAxis: {title: 'No of players'},
					hAxis: {title: 'Month'},
					height: 300
				}
			});


			$('#myTable4').gvChart({
				chartType: 'PieChart',
				gvSettings: {
					vAxis: {title: 'No of players'},
					hAxis: {title: 'Month'},
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
