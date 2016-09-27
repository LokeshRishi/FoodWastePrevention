<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student - Make Food Selection</title>

    <!-- Bootstrap Core CSS -->
    <link href="/foodwasteprevention/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="/foodwasteprevention/resources/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/foodwasteprevention/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
    .hover_img button { position:relative; }
    .hover_img button span { position:absolute; display:none; z-index:99; }
    .hover_img button:hover span { display:block; }
    </style>

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Student</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Make Selection</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">TTD</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Calories count</a>
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
                    <h2>Satiate Your Tastebuds</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
            

            <form id="foodSelector">
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
            
                <!-- Quad Section -->
                <div class="panel price panel-red">
                    <div class="panel-heading  text-center">
                        <h3>Indian Quad</h3>
                    </div>
                    <div class="panel-body text-center">
                        <p class="lead" style="font-size:40px"><strong>$10 off!</strong></p>
                    </div>
                    <ul class="list-group list-group-flush text-center">
                    
                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Breakfast">
                        <div class="btn-group hover_img">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                Burger<span><img src="/foodwasteprevention/resources/img/burger.png" alt="image" height="100" /></span> <span class="caret"></span>
                            </button>

                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    piece(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioB" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioB" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioB" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioB" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                        <div class="btn-group hover_img">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                Pasta<span><img src="/foodwasteprevention/resources/img/pasta.png" alt="image" height="100" /></span><span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioB" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioB" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioB" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioB" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                        <div class="btn-group hover_img">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                Corns<span><img src="/foodwasteprevention/resources/img/corn.png" alt="image" height="100" /></span><span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioB" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioB" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioB" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioB" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                    </li>

                    <li class="list-group-item"  data-toggle="tooltip" data-placement="left" title="Lunch">
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                Spaghetti <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioL" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioL" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioL" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioL" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Dinner">
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                Oats <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioD" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioD" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioD" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioD" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    </ul>
                    <div class="panel-footer">
                        <!-- <a class="btn btn-lg btn-block btn-danger" href="#">Confirm </a> -->
                    </div>
                </div>
                <!-- /Quad Section -->
            </div>
                    
                    
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
            
                <!-- Quad Section -->
                <div class="panel price panel-blue">
                    <div class="panel-heading arrow_box text-center">
                    <h3>Dutch Quad</h3>
                    </div>
                    <div class="panel-body text-center">
                        <p class="lead" style="font-size:40px"><strong>$20 off!</strong></p>
                    </div>
                    <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item"  data-toggle="tooltip" data-placement="left" title="Breakfast">
                        <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                Pizza <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    piece(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioB" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioB" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioB" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioB" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Lunch">
                        <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                Peas <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioL" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioL" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioL" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioL" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Dinner">
                        <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                BBQ Chicken <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioD" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioD" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioD" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioD" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    </ul>
                    <div class="panel-footer">
                        <!-- <a class="btn btn-lg btn-block btn-info" href="#">Confirm</a> -->
                    </div>
                </div>
                <!-- /Quad Section --> 
            </div>

                    

            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
            
                <!-- Quad Section -->
                <div class="panel price panel-green">
                    <div class="panel-heading arrow_box text-center">
                    <h3>Colonial Quad</h3>
                    </div>
                    <div class="panel-body text-center">
                        <p class="lead" style="font-size:40px"><strong>$0 off!</strong></p>
                    </div>
                    <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Breakfast">
                        <div class="btn-group">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                Wedges <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioB" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioB" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioB" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioB" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Lunch">
                        <div class="btn-group">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                Spaghetti <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioL" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioL" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioL" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioL" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                Lasagna <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioL" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioL" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioL" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioL" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                    </li>

                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Dinner">
                        <div class="btn-group hover_img">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                Fries<span><img src="/foodwasteprevention/resources/img/fries.png" alt="image" height="100" /></span><span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioD" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioD" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioD" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioD" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    </ul>
                    <div class="panel-footer">
                        <!-- <a class="btn btn-lg btn-block btn-success" href="#">Confirm</a> -->
                    </div>
                </div>
                <!-- /Quad Section -->
                
                
                </div>
            
                <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
            
                <!-- Quad Section -->
                <div class="panel price panel-grey">
                    <div class="panel-heading arrow_box text-center">
                    <h3>State Quad</h3>
                    </div>
                    <div class="panel-body text-center">
                        <p class="lead" style="font-size:40px"><strong>$3 off!</strong></p>
                    </div>
                    <ul class="list-group list-group-flush text-center">
                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Breakfast">
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Zitti <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioB" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioB" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioB" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioB" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    <li class="list-group-item" data-toggle="tooltip" data-placement="left" title="Lunch">
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Orzo <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioL" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioL" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioL" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioL" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>
                    </li>

                    <li class="list-group-item">
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Pasta <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    Scoop(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioL" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioL" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioL" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioL" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Burger <span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    piece(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioD" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioD" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioD" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioD" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                        <div class="btn-group hover_img">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Oats<span><img src="/foodwasteprevention/resources/img/oats.png" alt="image" height="100" /></span><span class="caret"></span>
                            </button>
                             <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-plus-title">
                                    piece(s)
                                    <b class="pull-right glyphicon glyphicon-chevron-up"></b>
                                </li>
                                <li><input type="radio" name="radioD" value="radio1" /><label id="dropdown-label">1</label></li>
                                <li><input type="radio" name="radioD" value="radio2" /><label id="dropdown-label">2</label></li>
                                <li><input type="radio" name="radioD" value="radio3" /><label id="dropdown-label">4</label></li>
                                <li><input type="radio" name="radioD" value="radio4" /><label id="dropdown-label">6</label></li>
                            </ul>
                        </div>

                    </li>

                    </ul>
                    <div class="panel-footer">
                        <!-- <a class="btn btn-lg btn-block btn-primary" href="#">Confirm</a> -->
                    </div>
                </div>
                <!-- /Quad Section -->
                </div>
                <input type="button" value="Submit" class="btn btn-lg btn-block btn-warning" onclick="location.href='student_edit.jsp';" style="max-width: 265px; margin: 0 auto;">
            </form>
        </div>
    </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Time To Deadline</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="counter">
                        <h3><div id="countdown"> </div></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
     <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Total Calories</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                
                <h2 class="col-lg-12 text-center">1005</h2>

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

    <!-- Bootstrap Core JavaScript -->
    <script src="/foodwasteprevention/resources/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="/foodwasteprevention/resources/js/jqBootstrapValidation.js"></script>

    <!-- Theme JavaScript -->
    <script src="/foodwasteprevention/resources/js/freelancer.js"></script>

	<script>
	$(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	});
	</script>

</body>

</html>
