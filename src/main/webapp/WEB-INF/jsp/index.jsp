<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Leapfrog Events</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="${SITE_URL}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <script src="${SITE_URL}/assets/dist/js/jquery-2.2.4.min.js" type="text/javascript"></script>
        <script src="${SITE_URL}/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="${SITE_URL}/assets/dist/css/front.css" rel="stylesheet" type="text/css"/>
        <link href="${SITE_URL}/assets/dist/css/flipclock.css" rel="stylesheet" type="text/css"/>
        <script src="${SITE_URL}/assets/dist/js/flipclock.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(function () {
                FlipClock.Lang.Custom = {days: 'Days', hours: 'Hours', minutes: 'Minutes', seconds: 'Seconds'};
                var opts = {
                    clockFace: 'TwentyFourHourClock',
                    countdown: true,
                };
                $('.timerClock').FlipClock(opts);
            });
        </script>

    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="-60">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#home"><!-- <img src="img/logo_main.png" height="30px"> --> leapfrog.academy </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#home">HOME</a></li>
                        <li><a href="#events">EVENTS</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Container (The Band Section) -->
        <div id="home" class="container text-center">
            <h3>Events at LEAPFROG ACADEMY</h3>

            <h1>UPCOMING EVENT</h1>
            <div class="container">
                <div class="timerClock"></div>
            </div>
            <br>

        </div>

        <!-- Container (TOUR Section) -->
        <div id="events" class="bg-1">
            <div class="container"><br>
                <h3 class="text-center">NEXT EVENT DATES</h3>
                <h2 class="text-center">Don't miss any events<br> Remember to book your seats!</h2>
                <br>
                <!-- <ul class="list-group">
                  <li class="list-group-item">September <span class="label label-danger">Sold Out!</span></li>
                  <li class="list-group-item">October <span class="label label-danger">Sold Out!</span></li> 
                  <li class="list-group-item">November <span class="badge">3</span></li> 
                </ul> -->

                <div class="row text-center">
                    <c:forEach var="e" items="${eventLists}">
                        <div class="col-sm-4">

                            <div class="thumbnail">

                                <img src="${SITE_URL}/assets/dist/img/img1.jpg" alt="Paris">
                                <p><strong>${e.eventName}</strong></p>
                                <p>${e.startDate}</p>
                                <button class="btn" data-toggle="modal" data-target="#myModal">Details</button>
                            </div>

                        </div>
                    </c:forEach>
                    <!--                    <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <img src="${SITE_URL}/assets/dist/img/img2.jpg" alt="New York">
                                                <p><strong>Talk Series</strong></p>
                                                <p>Wednesday 21 July 2016</p>
                                                <button class="btn" data-toggle="modal" data-target="#myModal">Book Now</button>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <img src="${SITE_URL}/assets/dist/img/img3.jpg" alt="San Francisco">
                                                <p><strong>Workshop</strong></p>
                                                <p>Friday 03 August 2016</p>
                                                <button class="btn" data-toggle="modal" data-target="#myModal">Book Now</button>
                                            </div>
                                        </div>-->
                </div>
            </div>


            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            <h4> Event Details </h4>
                        </div>
                        <div class="modal-body">
                            <c:forEach var="e" items="${eventList}">
                                <div>
                                    <p align="justify">${e.description}
                                    </p>
                                    <h2>Facilitator Detail:</h2>
                                    <p>${e.presenter}</p>
                                    <p>CEO/ Co-Founder at Leapfrog Academy</p>
                                    <h2>Location</h2>
                                    <p>${e.location}</p>
                                    <h2>Date/Time</h2>
                                    <p>${e.startDate} - ${e.endDate}</p>

                                    <a href="" title="URL">${e.url}</a>
                                </div><br>
                            </c:forEach>

                            <div class="modal-header">

                                <h4> Reserve your seat </h4>
                            </div>

                            <form role="form">

                                <p> Seats Available : 40 persons </p>
                                <div class="form-inline">
                                    <input type="text" class="form-control" id="usrname" placeholder="First Name">&nbsp;
                                    <input type="text" class="form-control" id="usrname" placeholder="Last Name">
                                </div>&nbsp;
                                <div class="form-inline">
                                    <input type="text" class="form-control" id="usrname" placeholder="Enter Email">&nbsp;
                                    <input type="text" class="form-control" id="usrname" placeholder="Enter Phone">
                                </div>&nbsp;
                                <div class="form-group">
                                    <input type="text" class="form-control" id="usrname" placeholder="Enter College/Organisation">
                                </div>
                                <!--                                <div class="form-group">
                                                                    <label>Type:</label>
                                                                    <input type="radio" name="person" value="person"> Student
                                                                    <input type="radio" name="person" value="person"> Visitor
                                                                </div>-->
                                <div align="center">
                                    <button type="submit" class="btn"> Book Now <span class="glyphicon glyphicon-send"></span>
                                    </button>
                                    <button type="submit" class="btn btn-danger btn-default pull-right" data-dismiss="modal">
                                        <span class="glyphicon glyphicon-remove"></span> Cancel
                                    </button>
                                </div>  
                            </form>
                        </div>

                        <!-- <li class="dropdown">
                                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
                                  <span class="caret"></span></a>
                                  <ul class="dropdown-menu">
                                    <li><a href="#">Merchandise</a></li>
                                    <li><a href="#">Extras</a></li>
                                    <li><a href="#">Media</a></li> 
                                  </ul>
                                </li>
                        -->
                        <!--         <div class="modal-footer">
                                  <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                                    <span class="glyphicon glyphicon-remove"></span> Cancel
                                  </button>
                                </div> -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Container (Contact Section) -->
        <div id="contact" class="container">
            <h2 class="text-center">Contact us</h2>
            <br>
            <h2 class="text-center">Any Questions?</h2>
            <br>
            <div class="row">
                <div class="col-md-4">
                    <p>We are here!</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> Dillibazar Height Marg, Kathmandu</p>
                    <p><span class="glyphicon glyphicon-phone"></span> Phone: +977 1-6922971</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> Email: enquire@leapfrog.academy</p>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
                    <br>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <button class="btn pull-right" type="submit">Send</button>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <!-- <h3 class="text-center">From The Blog</h3>  
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
              <li><a data-toggle="tab" href="#menu1">Chandler</a></li>
              <li><a data-toggle="tab" href="#menu2">Peter</a></li>
            </ul>
          
            <div class="tab-content">
              <div id="home" class="tab-pane fade in active">
                <h2>Mike Ross, Manager</h2>
                <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
              </div>
              <div id="menu1" class="tab-pane fade">
                <h2>Chandler Bing, Guitarist</h2>
                <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
              </div>
              <div id="menu2" class="tab-pane fade">
                <h2>Peter Griffin, Bass player</h2>
                <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
              </div>
            </div> -->
        </div>

        <div id="googleMap"></div>

        <!-- Add Google Maps -->
        <script src="http://maps.googleapis.com/maps/api/js"></script>

        <script>
            var myCenter = new google.maps.LatLng(27.707354, 85.327402);
            function initialize() {
                var mapProp = {
                    center: myCenter,
                    zoom: 18,
                    scrollwheel: false,
                    draggable: false,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                var marker = new google.maps.Marker({
                    position: myCenter,
                    title: 'LEAPFROG.ACADEMY',
                });
                marker.setMap(map);
            }

            google.maps.event.addDomListener(window, 'load', initialize);</script>

        <!-- Footer -->
        <footer class="text-center">
            <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p><a href="http://leapfrog.academy" data-toggle="tooltip" title="Events at Leapfrog.academy"><img src="${SITE_URL}/assets/dist/img/logo_main.png" height="40px"></a></p> 
        </footer>

        <script>
            $(document).ready(function () {
                // Initialize Tooltip
                $('[data-toggle="tooltip"]').tooltip();
                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {

                        // Prevent default anchor click behavior
                        event.preventDefault();
                        // Store hash
                        var hash = this.hash;
                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 900, function () {

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });
            })
        </script>

    </body>
</html>
