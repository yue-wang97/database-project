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
<title>Average Speed of Age</title>
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
					<h2>Average Speed of Age</h2>
				</div>
	
				<!-- agile-grid-left -->
				<div class="col-md-6 agile-grid-left">
					<div class="main">
						<table id='myTable2'>
							<caption>different ages</caption>
							<thead>
							<%
							UserServlet us=new UserServlet();  
							float[][] speed = us.avgSpeedofDfrtAge();
						    System.out.println(speed.length);
							%>
								<tr>
									<th></th>
									<%
									for(int i=0;i<speed.length;i++){  
									%>
									<th><%=speed[i][0] %></th>
									<%} %>
								</tr>
							</thead>
								<tbody>
								<tr>
									<th>speed</th>
									<%
									for(int i=0;i<speed.length;i++){  
									%>
									<td><%=speed[i][1] %></td>
									<%} %>
									
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-6 agile-grid-right">
					<h3 id="line">Analysis:</h3>
					<p>Before 23 years old, the average speed is increasing slowly. <br/>
					At the point of 23 years old, the average speed get to the peak of 2.66m/s. <br/>
					After 23 years old, the average speed is decreasing slowly. <br/>
					We assume that the data after 70 years old may generate <br/>
					from some users who select the unreal age when registering the <br/>
					bike-sharing system.</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</section>
	<!-- gv-chart -->
	<script type="text/javascript" src="js/jquery.gvChart.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				googleLoaded.done( function(){
					// $('#myTable1').gvChart({
					// 	chartType: 'AreaChart',
					// 	gvSettings: {
					// 		vAxis: {title: 'No of players'},
					// 		hAxis: {title: 'ages'},
					// 		height: 300
					// 		}
					// });
					
					
					$('#myTable2').gvChart({
						chartType: 'LineChart',
						gvSettings: {
							vAxis: {title: 'Speed[m/second]'},
							hAxis: {title: 'Ages'},
							height: 300
							}
					});
					
					// $('#myTable3').gvChart({
					// 	chartType: 'BarChart',
					// 	gvSettings: {
					// 		vAxis: {title: 'No of players'},
					// 		hAxis: {title: 'Month'},
					// 		height: 300
					// 		}
					// });
					//
					// $('#myTable4').gvChart({
					// 	chartType: 'ColumnChart',
					// 	gvSettings: {
					// 		vAxis: {title: 'No of players'},
					// 		hAxis: {title: 'Month'},
					// 		height: 300
					// 		}
					// });
					//
					// $('#myTable5').gvChart({
					// 	chartType: 'PieChart',
					// 	gvSettings: {
					// 		vAxis: {title: 'No of players'},
					// 		hAxis: {title: 'Month'},
					// 		height: 300
					// 		}
					// });
				});
			});
		</script>
		<!-- //gv-chart -->
		<!-- agile-grid-right -->
		<script>
			$(function(){
				$('#graph').graphify({
					//options: true,
					start: 'combo',
					obj: {
						id: 'ggg',
						width: 620,
						height: 375,
						xGrid: false,
						legend: true,
						title: 'Linux vs Mac',
						points: [
							[7, 26, 33, 74, 12, 49, 33],
							[32, 46, 75, 38, 62, 20, 52]
						],
						pointRadius: 3,
						colors: ['blue', 'red'],
						xDist: 70,
						dataNames: ['Linux', 'Mac'],
						xName: 'Day',
						tooltipWidth: 15,
						animations: true,
						pointAnimation: true,
						averagePointRadius: 10,
						design: {
							tooltipColor: '#fff',
							gridColor: 'grey',
							tooltipBoxColor: 'green',
							averageLineColor: 'green',
							pointColor: 'green',
							lineStrokeColor: 'grey',
						}
					}
				});
				$('#graph2').graphify({
					start: 'donut',
					obj: {
						id: 'lol',
						legend: false,
						showPoints: true,
						width: 775,
						legendX: 450,
						pieSize: 200,
						shadow: true,
						height: 400,
						animations: true,
						x: [2000, 2001, 2002, 2003, 2004, 2005, 2006],
						points: [17, 33, 64, 22, 87, 45, 38],
						xDist: 90,
						scale: 12,
						yDist: 35,
						grid: false,
						xName: 'Year',
						dataNames: ['Amount'],
						design: {
							lineColor: 'red',
							tooltipFontSize: '20px',
							pointColor: 'red',
							barColor: 'blue',
							areaColor: 'orange'
						}
					}
				});
				var bar = new GraphBar({
					attachTo: '#graph3',
					special: 'combo',
					height: 600,
					width: 620,
					yDist: 50,
					xDist: 70,
					showPoints: false,
					xGrid: false,
						legend: true,
						points: [
							[17, 21, 51, 74, 12, 49, 33],
							[32, 15, 75, 20, 45, 90, 52]
						],
						colors: ['red', 'orange'],
						dataNames: ['Hot', 'Warm'],
						xName: 'Day',
						tooltipWidth: 15,
						design: {
							tooltipColor: '#fff',
							gridColor: 'black',
							tooltipBoxColor: 'green',
							averageLineColor: 'blue',
						}
				});
				bar.init();
			});
		</script>
		<!-- //agile-grid-right -->
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
	
</body>
</html>
