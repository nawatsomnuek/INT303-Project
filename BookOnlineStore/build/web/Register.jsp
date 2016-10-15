<%-- 
    Document   : Register
    Created on : Oct 6, 2016, 3:32:31 PM
    Author     : Mallika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>::.Book Online Store.::</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">

                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Book Online Store</strong><br> 
                                Login &amp; Register</h1>
                            <div class="description">
                                <p>
                                    This is a book online store <strong>"Please login or register"</strong>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5">

                            <div class="form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Login to our site</h3>
                                        <p>Enter username and password to log on:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-lock"></i>
                                    </div>
                                </div>
                                <div class="form-bottom">
                                    <form role="form" action="" method="post" class="login-form">
                                        <div class="form-group">
                                            <label class="sr-only" for="form-username">Username</label>
                                            <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="form-username">
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-password">Password</label>
                                            <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="form-password">
                                        </div>
                                        <button type="submit" class="btn">Sign in!</button>
                                    </form>
                                </div>
                            </div>

                            <div class="social-login">
                                <h3>...or login with:</h3>
                                <div class="social-login-buttons">
                                    <a class="btn btn-link-2" href="#">
                                        <i class="fa fa-facebook"></i> Facebook
                                    </a>
                                    <a class="btn btn-link-2" href="#">
                                        <i class="fa fa-twitter"></i> Twitter
                                    </a>
                                    <a class="btn btn-link-2" href="#">
                                        <i class="fa fa-google-plus"></i> Google Plus
                                    </a>
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>

                        <div class="col-sm-5">

                            <div class="form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Sign up now</h3>
                                        <p>Fill in the form below to get instant access:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-pencil"></i>
                                    </div>
                                </div>

                                <div class="form-bottom">
                                    <form role="form" action="CustomerServlet" method="post" class="registration-form">
                                        <div class="form-group">
                                            <label class="sr-only" for="form-first-name">First name</label>
                                            <input type="text" name="fName" placeholder="First name..." class="form-first-name form-control" id="form-first-name">
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Last name</label>
                                            <input type="text" name="lName" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-about-yourself">Addess</label>
                                            <textarea name="address" placeholder="Addess..." 
                                                      class="form-about-yourself form-control" id="form-about-yourself"></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Province</label>
                                            <select name="province" class="form-last-name form-control" id="form-last-name">
                                                <option value="">Select Province ...</option>
                                                <option value="Bangkok">Bangkok</option>
                                                <option value="Chanthaburi">Chanthaburi</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Zipcode</label>
                                            <input type="text" name="zipcode" placeholder="Zipcode..." class="form-last-name form-control" id="form-last-name">
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Tel</label>
                                            <input type="text" name="tel" placeholder="Tel..." class="form-last-name form-control" id="form-last-name">
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Dob</label>
                                            <input type="date" name="dob" placeholder="Birth day..." class="form-last-name form-control" id="form-last-name">
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-email">Email</label>
                                            <input type="text" name="email" placeholder="Email..." class="form-email form-control" id="form-email">
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Password</label>
                                            <input type="password" name="password" placeholder="Password..." class="form-last-name form-control" id="form-last-name">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Re-Password</label>
                                            <input type="password" name="re-Password" placeholder="Confirm Password..." class="form-last-name form-control" id="form-last-name">
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Question</label>
                                            <input type="text" name="question" placeholder="Question..." class="form-last-name form-control" id="form-last-name">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Answer</label>
                                            <input type="text" name="answer" placeholder="Answer..." class="form-last-name form-control" id="form-last-name">
                                        </div>

                                        <button type="submit" class="btn">Sign me up!</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">

                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="footer-border"></div>
                        <p>Made by Anli Zaimi at <a href="http://azmind.com" target="_blank"><strong>AZMIND</strong></a> 
                            having a lot of fun. <i class="fa fa-smile-o"></i></p>
                    </div>

                </div>
            </div>
        </footer>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>

        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
</html>