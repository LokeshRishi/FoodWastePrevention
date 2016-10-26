<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Manager - Welcome Quad Manager</title>

    <!-- Bootstrap Core CSS -->
    <link href="/foodwasteprevention/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="/foodwasteprevention/resources/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/foodwasteprevention/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Droppable CSS -->
    <link rel="stylesheet" href="/foodwasteprevention/resources/css/foodItem.css" />

    <link href="/foodwasteprevention/resources/css/media.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

<nav style="position:fixed;top:105px;box-shadow: 10px 10px 5px #888888;background-color:#18bc9c;padding:4px">
 	<h5 style="margin-left:1em">Menu Creation Deadline</h5>
 	<div id="counter"> </div>
</nav>

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Manager</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="logout">Logout</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Create Food Menu</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">Cumulative Report</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact Admin</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="/foodwasteprevention/resources/img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">Food Waste Prevention</span>
                        <hr class="star-light">
                        <span class="skills">Stop the Rot - And - Waste Not</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Cook to Order</h2>
                    <hr class="star-primary">
                </div>
            </div>
            
            <div class="row">

            <div id="container">
                <div class="food-list food-container" id="catalog">
                    <h3>Catalog</h3>
                </div>

                <div class="food-list food-container" id="menu">
                    <h3>Menu</h3>
                </div>

                <div class="food-list">
                    <h3>Add a food item</h3>
                    <form id="foodItem-form">
                        <input type="text" id="foodText" class="form-control" placeholder="Name of food item"/>
                        <input id="foodImage" class="form-control" name="foodImage" type="file" style="height: 25%; !important">
						<select  id="foodMeal" name="meal-type" class="form-control" style="margin-left: 25px; width: 83%; !important" required>
						  <option value="">Select Meal</option>
						  <option value="Breakfast">Breakfast</option>
						  <option value="Lunch">Lunch</option>
						  <option value="Dinner">Dinner</option>
						</select>
						
                        <input type="button" class="btn btn-primary" value="Add item" onclick="validationFunction();" />
                    </form>                    
                    
                    <div id="delete-div">
                        Drag Here to Delete
                    </div>
                </div>

                <div style="clear:both;"></div>
            </div>
           <br/>
			<p id="errorMessage" style="text-align: center; max-width: 293px; margin: 0 427px; margin-top: 10px"></p>
			<input type="button" value="Create Menu" onclick="location.href='manageredit';" class="btn btn-lg btn-block btn-warning" style="max-width: 293px; margin: 0 427px; margin-top: 10px">
            </div>
    </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Cumulative Report</h2>
                    <hr class="star-light">
                </div>
            </div>
            <input type="download" value="Download" class="btn btn-lg btn-block btn-danger" onclick="location.href='report'" style="max-width: 265px; margin: 0 auto;">
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Admin</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Admin Email</label>
                                <input type="email" class="form-control" placeholder="Admin Email" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
	</section>


    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>Whichever Quad You Like</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Developers</h3>
                        <p>To iterate is human, to recurse divine.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>


    <!-- jQuery -->
    <script src="/foodwasteprevention/resources/jquery/jquery.min.js"></script>
    <script src="/foodwasteprevention/resources/jquery/jquery.ui.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/foodwasteprevention/resources/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/foodwasteprevention/resources/js/jqBootstrapValidation.js"></script>
    <script src="/foodwasteprevention/resources/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="/foodwasteprevention/resources/js/freelancer.js"></script>

    <!-- Droppable JavaScript -->
    <script src="/foodwasteprevention/resources/js/foodItem.js"></script>

    <script src="/foodwasteprevention/resources/js/jquery.countdown.js"></script>

    <script type="text/javascript">
    	
	    function validationFunction() {
	        var fI = $("#foodImage").val();
	        var fM = document.getElementById("foodMeal");
	        var fT = $("#foodText").val();

	        if (jQuery.trim(fT).length == 0) {
	            document.getElementById("errorMessage").innerHTML = "<h6>Please enter the name of the food item</h6>";
	        } else if (jQuery.trim(fI).length == 0) {
	            document.getElementById("errorMessage").innerHTML = "<h6>Please upload an image of the food item</h6>";
	        } else if (fM.checkValidity() == false) {
	            document.getElementById("errorMessage").innerHTML = "<h6>Please select the meal type</h6>";
	        } else {
	        	foodItem.add();
	        }
	    }

        $(".food-container").droppable();
        $(".menu-item").draggable({ revert: "valid", revertDuration:200 });
        foodItem.init();
        
        $(".dropdown-menu li h6").click(function(){	  
       		$(".btn:first-child").html($(this).text()+' <span class="caret"></span>');
        });
        
    	$('#counter').countdown({
    	    image: "./resources/img/digits.png",
    	    format: "hh:mm:ss",
    	    endTime: new Date('10/25/16 23:59:59'),
    	    digitWidth: 33.99,
    	    digitHeight: 45
    	  });
    	</script>

</body>

</html>
