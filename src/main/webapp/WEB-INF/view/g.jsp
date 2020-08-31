<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        * {
            box-sizing: border-box;
        }






        .middle{
            width:100%;
            position:relative;
            background-color: #00ff3aa6;
            text-align: center;
            padding: 2%;

        }

        h1 {
            font-family: 'Great Vibes', cursive;
            font-size: 5em;
            white-space:normal;
            word-break: break-all;
            color:##383d41bf;;
            text-shadow: -1px -1px 0px rgba(255, 255, 255, 0.3), 1px 1px 0px
            rgba(0, 0, 0, 0.8);
            text-align:center;
            width:100%;
        }

        body {
            font-family: Arial;
            font-size: 100%;
            background: #28a74561;
            padding: .4%;
        }

        /* Header/Blog Title */



        /* Style the top navigation bar */
        .topnav {
            overflow: hidden;
            background-color: blue;
        }

        /* Style the topnav links */
        .topnav a {
            float: left;

            color: #f2f2f2;
            text-align: center;
            padding: 2%;
            text-decoration: none;
        }

        /* Change color on hover */
        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Create two unequal columns that floats next to each other */
        /* Left column */
        .leftcolumn {
            float: left;
            width: 70%;
        }





        /* Right column */
        .rightcolumn {
            float: left;
            width: 40%;
            background-color: #FFFFFF;
            padding-left: 20px;
        }
        .leftcolumn p{
            top:20%;
        }

        /* Fake image */
        .fakeimg {
            background-color: #0000ff17;
            width: 100%;
            padding: 20px;
        }

        /* Add a card effect for articles */
        .card {
            background-color: #4892596b;
            padding: 20px;
            margin-top: 20px;
            margin-left: 15px;
        }


        .card2 {
            background-color: #4892596b;

            padding: 2%;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Footer */
        .footer {
            padding: 2%;
            text-align: center;
            background: #28a745d6;

        }

        .card1{
            padding: 2%;
            width: 30%;
        }

        .card .y img{
            width: 20%;
        }
        .bg-light {
            background-color:cornsilk!important;
        }

        <!-- /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */ -->
        <!-- @media screen and (max-width: 800px) { -->
        <!-- .leftcolumn, .rightcolumn {    -->
            <!-- width: 100%; -->
            <!-- padding: 0; -->
            <!-- } -->
        <!-- } -->

        <!-- /* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */ -->
        <!-- @media screen and (max-width: 400px) { -->
        <!-- .topnav a { -->
            <!-- float: none; -->
            <!-- width: 100%; -->
            <!-- } -->
        <!-- } -->


        .c img{
            width: 100%;
            height: 100%;
        }
        .j p{

            width: 100%;

        }
        .y img{
            width:  100%;
        }
    </style>
</head>



<body>



<div class="container-fluid">





    <div class="middle">
        <h1>www.Mohaiminulhaq.com</h1>




        <div class="n">
            <div class="container">

                <h2>Registation</h2>
                <!-- Button to Open the Modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                    Click for Registation
                </button>

                <!-- The Modal -->
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Registation:</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                Name:
                                <input class="form-control" type="text" placeholder="Enter Your Name">
                                <br>
                                Password:
                                <input class="form-control" type="text" placeholder="Enter Your Password">

                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Ok</button>
                            </div>

                        </div>
                    </div>
                </div></div>

        </div>
    </div>







    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Tanvir</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item ">
                    <a class="nav-link" href="#"> Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">Disabled</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">Screenshots</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">About</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">Pricing</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">News</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">Starts</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="#">Contact</a>
                </li>

            </ul>

        </div>
    </nav>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item active">
                <img src="image/6.jpg" alt="Los Angeles" style="width:100%;">
                <div class="carousel-caption">

                    <p>Mohaiminul Haq Tanvir</p>
                </div>
            </div>

            <div class="item">
                <img src="image/im.jpg" alt="Chicago" style="width:100%;">
                <div class="carousel-caption">

                    <p>flower</p>
                </div>
            </div>

            <div class="item">
                <img src="image/s.jpg" alt="New York" style="width:100%;">
                <div class="carousel-caption">


                </div>
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="row topnav1">
        <div class="leftcolumn">
            <div class="card">
                <h2>The lotus flower</h2>
                <h5>Picture:</h5>
                <div class="container-fluid">
                    <div class="c">
                        <img src="image/im.jpg" alt="ggg"></div>
                    <div class="j">
                        <p></p>
                        <p>About the lotus flower:</p>
                        <p>The lotus flower is one of the most remarkable creations in nature. Its beauty lies in its purity, because this magnificent flower emerges from the bottom of a pond, yet rises above its muddy depths to become a thing of beauty, signifying spiritual elevation and growth. Let's take a closer look at this remarkable flower.</p>

                    </div>
                </div>
            </div>

        </div>

        <div class="card1">
            <h2>The Royal Bengal tiger</h2>
            <h5>Picture:</h5>
            <div class="container-fluid">
                <div class="y">

                    <img src="image/tiger.jpg" class="img-resposive" alt="ggg">
                </div>
            </div>
            <p></p>
            <p>About..</p>
            <p>The Royal Bengal tiger is the national animal of Bangladesh. They are the most mesmerizing wild animal in the world. Bangladesh‘s national animal, Royal Bengal tiger is the symbol of bravery and sharp intelligence. They are also representing the power as they are indeed very strong. As they are such a powerful, intelligent and majestic animal, Royal Bengal tiger is considered as the national animal of Bangladesh..</p>
        </div>
    </div>



    <div class="footer">
        <h1>More Information:</h1>
        <br> <br>  <br> <br>


        <div class="container-fluid">
            <div class="row">
                <div class="col-lg">
                    <div class="card2">
                        <h3>About Me</h3>


                        <div class="fakeimg">

                            <div class="y">

                                <img src="photo/f.jpg" class="rounded-circle" alt="Cinque Terre">
                            </div>
                            <p>Mohaiminul Haq (Tanvir)</p></div>




                        <p>My name is Md.Mohaiminul Haq.I am a student odf Daffodil International University in the Department of Software Engineering.I am a java Devoloper.I also made some desktop Software(offline base).</p>
                    </div>
                </div>


                <div class="col-lg">
                    <div class="card2">
                        <h3>My Work Skills:</h3>
                        <p>1.java Devoloper</p>
                        <p>2.C# Devoloper</p>
                        <p>3.Web Designer</p>
                        <p>4.Database(mysql,oracle,sqlite.)</p>
                        <p>5.Video Editor.</p>
                        <p></p>
                    </div>
                </div>

                <div class="col-lg">
                    <div class="card2">
                        <h3>Popular Post</h3>
                        <div class="fakeimg">
                            <div class="y">

                                <img src="image/1.jpg" alt="ggg">
                            </div>
                            <p>Project Show</p></div>
                        <div class="fakeimg">

                            <div class="y">

                                <img src="image/3.jpg" alt="ggg">
                            </div>
                            <p>Project Show</p></div>
                        <div class="fakeimg">

                            <div class="y">
                                x
                                <img src="image/4.jpg" alt="ggg">
                            </div>
                            <p>Project Show</p></div>
                    </div>

                </div>



                <div class="col-lg">
                    <div class="card2">
                        <h3>Follow Me</h3>

                        <a href="https://www.facebook.com/tanvir.hider.31">Visit my Fb account.</a>
                        <a href="http://mohaiminulhaq.blogspot.com/2016/08/">Visit my blogspot </a>
                    </div>

                </div>

            </div>
        </div>



    </div>









    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</div>
</body>
</html>
