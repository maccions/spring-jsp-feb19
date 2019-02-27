<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Steaks & Chops - GRID</title>

    <!---Font Icon-->
    <link href="/res/css/font-awesome.min.css" rel="stylesheet">

    <!-- CSS -->
    <link href="/res/css/bootstrap.min.css" rel="stylesheet">
    <link href="/res/css/styles.css" rel="stylesheet">
    <link href="/res/css/select2.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/res/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/res/favicon.ico" type="image/x-icon">

    <link rel="icon" href="/res/images/cropped-logo-32x32.png" sizes="32x32"/>
    <link rel="icon" href="/res/images/cropped-logo-192x192.png" sizes="192x192"/>
    <link rel="apple-touch-icon-precomposed" href="/res/images/cropped-logo-180x180.png"/>
    <meta name="msapplication-TileImage" content="/res/images/cropped-logo-270x270.png"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container-fluid justify-content-center">
        <a class="navbar-brand" href="/"><img src="/res/images/logo.png" alt><span>Steaks & Chops</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">

                        Demo

                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/index">Homepage-1</a>
                        <a class="dropdown-item" href="/index2">Homepage-2</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">

                        Recipes

                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="browse-recipes.html">Browse Recipes</a>
                        <a class="dropdown-item" href="recipe-detail.html">Recipe Detail</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">

                        Pages

                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="typography.html">Typography</a>
                        <a class="dropdown-item" href="contact.html">Contact</a>
                    </div>
                </li>
                <li class="nav-item btn-submit-recipe">
                    <a class="nav-link" href="submit-recipes.html"><i class="fa fa-upload" aria-hidden="true"></i>
                        Submit Recipe</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- nuovo piatto -->
<div class="page">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12 title text-center">
                <h1>Nuovo Piatto</h1>
            </div>
            <div class="col-lg-12">
                    <form method="post" action="/salva-piatto"  >
                        <div class="form-group">
                            <label for="txtnome">Nome</label>
                            <input type="text" class="form-control" id="txtnome" name="titolo" required value="" placeholder="...">
                        </div>
                        <div class="form-group">
                            <label for="txtdesc">Descrizione</label>
                            <input type="text" class="form-control" id="txtdesc" name="descrizione" placeholder="...">
                        </div>
                        <div class="form-group">
                            <label for="txtimg">Immagine</label>
                            <input type="text" class="form-control" id="txtimg" name="image" placeholder="...">
                        </div>
                        <button type="submit" class="btn btn-primary" >SALVA</button>
                    </form>
            </div>
        </div>
    </div>
</div>


<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <h5>About</h5>
                <p>My name is Gerina Amy, creator of Steaks & Chops. I've lived in Southern Ontario my whole life. A
                    former house cleaner (AKA cleaning lady), I share cleaning tips on this blog from time to time but
                    mostly I love to share my recipes. </p>
            </div>
            <div class="col-lg-3 col-sm-6">
                <h5>Archive</h5>
                <ul>
                    <li><a href="#">Ottobre 2018</a>
                    </li>
                    <li><a href="#">Novembre 2018</a>
                    </li>
                    <li><a href="#">Dicembre 2018</a>
                    </li>
                    <li><a href="#">Gennaio 2019</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 col-sm-6">
                <h5>Recipes</h5>
                <ul>
                    <li><a href="browse-recipes.html">Browse Recipes</a>
                    </li>
                    <li><a href="recipe-detail.html">Recipe Detail</a>
                    </li>
                    <li><a href="submit-recipes.html">Submit Recipe</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 col-sm-6">
                <h5>Newsletter</h5>
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control">
                    </div>
                    <button type="submit" class="btn">Subscribe</button>
                </form>
            </div>
        </div>
    </div>
</footer>

<!-- Copyright -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">Made with <i class="fa fa-heart" aria-hidden="true"></i> &#8212; Copyright &copy;
                2018 <a href="homepage-1.html">Steaks & Chops - Food Bootstrap Template</a>. All Rights Reserved.
            </div>
        </div>
    </div>
</div>

<!-- Javascript -->
<script src="/res/js/plugins/jquery.min.js"></script>
<script src="/res/js/plugins/popper.min.js"></script>
<script src="/res/js/plugins/bootstrap.min.js"></script>
<script src="/res/js/plugins/select2.min.js"></script>
<script src="/res/js/plugins/jquery-ui.js"></script>

<script src="/res/js/scripts.js"></script>

</body>
</html>