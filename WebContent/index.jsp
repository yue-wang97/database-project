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
<title>Home</title>
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
<!-- charts -->
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<link rel="stylesheet" href="css/morris.css">
<!-- //charts -->
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
</head>
<body class="dashboard-page">
	<script>
	        var theme = $.cookie('protonTheme') || 'default';
	        $('body').removeClass (function (index, css) {
	            return (css.match (/\btheme-\S+/g) || []).join(' ');
	        });
	        if (theme !== 'default') $('body').addClass(theme);
        </script>
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
		</ul>>
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

					<div class="area-grids">
						<div class="area-grids-heading">
							<section class="bg-primary" id="about">
								<div class="container">
									<div class="row">
										<div class="col-lg-8 col-lg-offset-2 text-center">
											<h2 class="section-heading">NYC Bicycle-Sharing Analysis</h2>
											<hr class="light">
											<p class="text-faded" >
												Over the past decade, bicycle-sharing has been growing in number and <br />
												popularity in lots of cities across the world. This software is based on <br />
												the rental data of NYC CityBike in 2016 to obtain some significant information <br />
												of usage situation of shared bicycles and try to help the Sharing bike operator<br />
												to make better decisions.<br /><br />
												Group 12<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</p >
										</div>
									</div>
								</div>
							</section>
							<div class="footer" >We got the data from this website:
												<br /><a href=" ">https://www.kaggle.com/samratp/bikeshare-analysis.</a > <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												Thanks to Udacity for the metadata from Citi Bike in New York City.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
						</div>
						<!--<div id="graph4"></div>
						<script>
							Morris.Donut({
							  element: 'graph4',
							  data: [
								{value: 70, label: 'foo', formatted: 'at least 70%' },
								{value: 15, label: 'bar', formatted: 'approx. 15%' },
								{value: 10, label: 'baz', formatted: 'approx. 10%' },
								{value: 5, label: 'A really really long label', formatted: 'at most 5%' }
							  ],
							  formatter: function (x, data) { return data.formatted; }
							});
						</script>

					</div>
					 //area-chart -->
						<!--</div>
                        <div class="col-md-8 chart-left">
                             updating-data -->
						<!--<div class="agile-Updating-grids">
                            <div class="area-grids-heading">
                                <h3>Updating data</h3>
                            </div>
                            <div id="graph1"></div>
                            <script>
                            var nReloads = 0;
                            function data(offset) {
                              var ret = [];
                              for (var x = 0; x <= 360; x += 10) {
                                var v = (offset + x) % 360;
                                ret.push({
                                  x: x,
                                  y: Math.sin(Math.PI * v / 180).toFixed(4),
                                  z: Math.cos(Math.PI * v / 180).toFixed(4)
                                });
                              }
                              return ret;
                            }
                            var graph = Morris.Line({
                                element: 'graph1',
                                data: data(0),
                                xkey: 'x',
                                ykeys: ['y', 'z'],
                                labels: ['sin()', 'cos()'],
                                parseTime: false,
                                ymin: -1.0,
                                ymax: 1.0,
                                hideHover: true
                            });
                            function update() {
                              nReloads++;
                              graph.setData(data(5 * nReloads));
                              $('#reloadStatus').text(nReloads + ' reloads');
                            }
                            setInterval(update, 100);
                            </script>

                        </div>
                         //updating-data -->
						<!--</div>
                        <div class="clearfix"> </div>
                    </div>

                    <div class="agile-bottom-grids">
                        <div class="col-md-6 agile-bottom-right">
                            <div class="agile-bottom-grid">
                                <div class="area-grids-heading">
                                    <h3>Stacked Bars chart</h3>
                                </div>
                                <div id="graph6"></div>
                                <script>
                                // Use Morris.Bar
                                Morris.Bar({
                                  element: 'graph6',
                                  data: [
                                    {x: '2011 Q1', y: 0},
                                    {x: '2011 Q2', y: 1},
                                    {x: '2011 Q3', y: 2},
                                    {x: '2011 Q4', y: 3},
                                    {x: '2012 Q1', y: 4},
                                    {x: '2012 Q2', y: 5},
                                    {x: '2012 Q3', y: 6},
                                    {x: '2012 Q4', y: 7},
                                    {x: '2013 Q1', y: 8}
                                  ],
                                  xkey: 'x',
                                  ykeys: ['y'],
                                  labels: ['Y'],
                                  barColors: function (row, series, type) {
                                    if (type === 'bar') {
                                      var red = Math.ceil(255 * row.y / this.ymax);
                                      return 'rgb(' + red + ',0,0)';
                                    }
                                    else {
                                      return '#000';
                                    }
                                  }
                                });
                                </script>
                            </div>
                        </div>
                        <div class="col-md-6 agile-bottom-left">
                            <div class="agile-bottom-grid">
                                <div class="area-grids-heading">
                                    <h3>Stacked Bars chart</h3>
                                </div>
                                <div id="graph5"></div>
                                <script>
                                // Use Morris.Bar
                                Morris.Bar({
                                  element: 'graph5',
                                  data: [
                                    {x: '2011 Q1', y: 3, z: 2, a: 3},
                                    {x: '2011 Q2', y: 2, z: null, a: 1},
                                    {x: '2011 Q3', y: 0, z: 2, a: 4},
                                    {x: '2011 Q4', y: 2, z: 4, a: 3}
                                  ],
                                  xkey: 'x',
                                  ykeys: ['y', 'z', 'a'],
                                  labels: ['Y', 'Z', 'A'],
                                  stacked: true
                                });
                                </script>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="agile-last-grids">
                        <div class="col-md-4 agile-last-left">
                            <div class="agile-last-grid">
                                <div class="area-grids-heading">
                                    <h3>Daylight savings time</h3>
                                </div>
                                <div id="graph7"></div>
                                <script>
                                // This crosses a DST boundary in the UK.
                                Morris.Area({
                                  element: 'graph7',
                                  data: [
                                    {x: '2013-03-30 22:00:00', y: 3, z: 3},
                                    {x: '2013-03-31 00:00:00', y: 2, z: 0},
                                    {x: '2013-03-31 02:00:00', y: 0, z: 2},
                                    {x: '2013-03-31 04:00:00', y: 4, z: 4}
                                  ],
                                  xkey: 'x',
                                  ykeys: ['y', 'z'],
                                  labels: ['Y', 'Z']
                                });
                                </script>

                            </div>
                        </div>
                        <div class="col-md-4 agile-last-left agile-last-middle">
                            <div class="agile-last-grid">
                                <div class="area-grids-heading">
                                    <h3>Daylight savings time</h3>
                                </div>
                                <div id="graph8"></div>
                                <script>
                                /* data stolen from http://howmanyleft.co.uk/vehicle/jaguar_'e'_type */
                                var day_data = [
                                  {"period": "2012-10-01", "licensed": 3407, "sorned": 660},
                                  {"period": "2012-09-30", "licensed": 3351, "sorned": 629},
                                  {"period": "2012-09-29", "licensed": 3269, "sorned": 618},
                                  {"period": "2012-09-20", "licensed": 3246, "sorned": 661},
                                  {"period": "2012-09-19", "licensed": 3257, "sorned": 667},
                                  {"period": "2012-09-18", "licensed": 3248, "sorned": 627},
                                  {"period": "2012-09-17", "licensed": 3171, "sorned": 660},
                                  {"period": "2012-09-16", "licensed": 3171, "sorned": 676},
                                  {"period": "2012-09-15", "licensed": 3201, "sorned": 656},
                                  {"period": "2012-09-10", "licensed": 3215, "sorned": 622}
                                ];
                                Morris.Bar({
                                  element: 'graph8',
                                  data: day_data,
                                  xkey: 'period',
                                  ykeys: ['licensed', 'sorned'],
                                  labels: ['Licensed', 'SORN'],
                                  xLabelAngle: 60
                                });
                                </script>
                            </div>
                        </div>
                        <div class="col-md-4 agile-last-left agile-last-right">
                            <div class="agile-last-grid">
                                <div class="area-grids-heading">
                                    <h3>Daylight savings time</h3>
                                </div>
                                <div id="graph9"></div>
                                <script>
                                var day_data = [
                                  {"elapsed": "I", "value": 34},
                                  {"elapsed": "II", "value": 24},
                                  {"elapsed": "III", "value": 3},
                                  {"elapsed": "IV", "value": 12},
                                  {"elapsed": "V", "value": 13},
                                  {"elapsed": "VI", "value": 22},
                                  {"elapsed": "VII", "value": 5},
                                  {"elapsed": "VIII", "value": 26},
                                  {"elapsed": "IX", "value": 12},
                                  {"elapsed": "X", "value": 19}
                                ];
                                Morris.Line({
                                  element: 'graph9',
                                  data: day_data,
                                  xkey: 'elapsed',
                                  ykeys: ['value'],
                                  labels: ['value'],
                                  parseTime: false
                                });
                                </script>

                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="agile-two-grids">
                        <div class="col-md-6 count">
                                <div class="count-grid">
                                    <h3 class="title">Countdown</h3>
                                    <ul id="example">
                                        <li><span class="hours">00</span><p class="hours_text">Hours</p></li>
                                        <li class="seperator">:</li>
                                        <li><span class="minutes">00</span><p class="minutes_text">Minutes</p></li>
                                        <li class="seperator">:</li>
                                        <li><span class="seconds">00</span><p class="seconds_text">Seconds</p></li>
                                    </ul>
                                    <div class="clearfix"> </div>
                                    <script type="text/javascript" src="js/jquery.countdown.min.js"></script>
                                    <script type="text/javascript">
                                        $('#example').countdown({
                                            date: '12/24/2020 18:59:59',
                                            offset: -8,
                                            day: 'Day',
                                            days: 'Days'
                                        }, function () {
                                            alert('Done!');
                                        });
                                    </script>
                                </div>
                        </div>
                        <div class="col-md-6 weather">
                            <div class="weather-right">
                                <div class="weather-heading">
                                    <h3>Weather Report</h3>
                                </div>
                                        <ul>
                                            <li>
                                                <figure class="icons">
                                                    <canvas id="partly-cloudy-day" width="60" height="60"></canvas>
                                                </figure>
                                                <h3>25 Â°C</h3>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure class="icons">
                                                    <canvas id="clear-day" width="40" height="40"></canvas>
                                                </figure>
                                                <div class="weather-text">
                                                    <h4>WED</h4>
                                                    <h5>27 Â°C</h5>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure class="icons">
                                                    <canvas id="snow" width="40" height="40"></canvas>
                                                </figure>
                                                <div class="weather-text">
                                                    <h4>THR</h4>
                                                    <h5>13 Â°C</h5>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure class="icons">
                                                    <canvas id="partly-cloudy-night" width="40" height="40"></canvas>
                                                </figure>
                                                <div class="weather-text">
                                                    <h4>FRI</h4>
                                                    <h5>18 Â°C</h5>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure class="icons">
                                                    <canvas id="cloudy" width="40" height="40"></canvas>
                                                </figure>
                                                <div class="weather-text">
                                                    <h4>SAT</h4>
                                                    <h5>15 Â°C</h5>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure class="icons">
                                                    <canvas id="fog" width="40" height="40"></canvas>
                                                </figure>
                                                <div class="weather-text">
                                                    <h4>SUN</h4>
                                                    <h5>11 Â°C</h5>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                        </ul>
                                        <script>
                                             var icons = new Skycons({"color": "#fcb216"}),
                                                  list  = [
                                                    "partly-cloudy-day"
                                                  ],
                                                  i;

                                              for(i = list.length; i--; )
                                                icons.set(list[i], list[i]);
                                              icons.play();
                                        </script>
                                        <script>
                                             var icons = new Skycons({"color": "#000"}),
                                                  list  = [
                                                    "clear-night","partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind","fog"
                                                  ],
                                                  i;

                                              for(i = list.length; i--; )
                                                icons.set(list[i], list[i]);
                                              icons.play();
                                        </script>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <!-- footer -->
						<!--<div class="footer">
                            <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.mycodes.net/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                        </div>
                         //footer
	</section>-->
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>

</body>
</html>
