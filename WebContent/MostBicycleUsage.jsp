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
<title>Most Bicycle Usage</title>
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
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->
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
			<i class="icon-reorder"></i>
			</a>
		</nav>

		<div class="main-grid">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2>Most Bicycle Usage</h2>
				</div>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h3>Most usage in frequency </h3>
					    <table id="table">
					    <%
							UserServlet us=new UserServlet();  
							int[][] mostbike = us.mostbikeIn2016();
						%>
						<thead>
						  <tr>
							<th>Bike ID</th>
							<th>Number of use</th>
						  </tr>
						</thead>
						<tbody>
						<%
						for(int i=0;i<mostbike.length;i++){  
						%>
							<tr>
								<td><%=mostbike[i][0] %></td>
								<td><%=mostbike[i][1] %></td>
						  	</tr>
						<%} %>
						  
						</tbody>
					  </table>
					</div>
<!--				  <code class="js">-->
<!--					$('#table').basictable();-->
<!--				  </code>-->
			<h3> </h3>
				</div>
				<!-- //tables -->
			</div>
		</div>
<!--		&lt;!&ndash; footer &ndash;&gt;-->
<!--		<div class="footer">-->
<!--			<p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.mycodes.net/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>-->
<!--		</div>-->
<!--		&lt;!&ndash; //footer &ndash;&gt;-->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
	
</body>
</html>
