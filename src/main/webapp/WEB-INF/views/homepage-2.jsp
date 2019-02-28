<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Steaks & Chops - LIST</title>

  <!---Font Icon-->
  <link href="/res/css/font-awesome.min.css" rel="stylesheet">

  <!-- CSS -->
  <link href="/res/css/bootstrap.min.css" rel="stylesheet">
  <link href="/res/css/styles.css" rel="stylesheet">
  <link href="/res/css/select2.min.css" rel="stylesheet">

  <!-- Favicon -->
  <link rel="shortcut icon" href="/res/favicon.ico" type="image/x-icon">
  <link rel="icon" href="/res/favicon.ico" type="image/x-icon">

  <link rel="icon" href="/res/images/cropped-logo-32x32.png" sizes="32x32" />
  <link rel="icon" href="/res/images/cropped-logo-192x192.png" sizes="192x192" />
  <link rel="apple-touch-icon-precomposed" href="/res/images/cropped-logo-180x180.png" />
  <meta name="msapplication-TileImage" content="/res/images/cropped-logo-270x270.png" />

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
      <a class="navbar-brand" href="homepage-1.html"><img src="/res/images/logo.png" alt><span>Steaks & Chops</span></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="homepage-2.html">Home</a>
          </li>
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                Demo

              </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="homepage-1.html">Homepage-1</a>
              <a class="dropdown-item" href="homepage-2.html">Homepage-2</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                Recipes

              </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="browse-recipes.html">Browse Recipes</a>
              <a class="dropdown-item" href="recipe-detail.html">Recipe Detail</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                Pages

              </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="typography.html">Typography</a>
              <a class="dropdown-item" href="contact.html">Contact</a>
            </div>
          </li>
          <li class="nav-item btn-submit-recipe">
            <a class="nav-link" href="submit-recipes.html"><i class="fa fa-upload" aria-hidden="true"></i> Submit Recipe</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Top Recipes -->
  <div class="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h5><i class="fa fa-cutlery" aria-hidden="true"></i> Top Breakfast Recipes</h5>
          <div class="box clearfix">
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes1.jpg" alt="">
            </a>
            <h3><a href="recipe-detail.html">Cinnamon Baked Doughnuts</a></h3>
            <p>My Great Aunt Orabelle used to make "Cake" style doughnuts from scratch. I can remember her fingertips being burnt from when she slipped them into the hot fat....</p>
          </div>
        </div>
        <div class="col-lg-4">
          <h5><i class="fa fa-cutlery" aria-hidden="true"></i> Top Lunch Recipes</h5>
          <div class="box clearfix">
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes2.jpg" alt="">
            </a>
            <h3><a href="recipe-detail.html">Fruit Mix With Lemon Gravy</a></h3>
            <p>Christmas came and went in a blur.. The last big holiday of the year that most of us look forward to, almost since the beginning of the year is gone and I am feeling a bit like a deflated balloon. ...</p>
          </div>
        </div>
        <div class="col-lg-4">
          <h5><i class="fa fa-cutlery" aria-hidden="true"></i> Top Dinner Recipes</h5>
          <div class="box clearfix">
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes3.jpg" alt="">
            </a>
            <h3><a href="recipe-detail.html">Red Cilly Sauce Cheese</a></h3>
            <p>his is a very hot sauce and good for splashing over anything ... Hot red chilli sauce. Loading. ... Blue corn and cheese quesadillas; Chilli chocolate...</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Featured Recipes-->
  <div class="featured">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <h4>Feb 22, 2019</h4>
          <h3>Recipes of the day</h3>
        </div>
        <div class="col-lg-8">
          <div class="box grid recipes">
            <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Gerina Amy</div>
            <a href="recipe-detail.html">
              <img src="/res/images/recipe1.jpg" alt="">
            </a>
            <h2><a href="recipe-detail.html">Roast Chicken With Lemon Gravy</a></h2>
            <p>This recipe is great for serving family-style: Put all of the ingredients out separately and let your guests top the corn however they wish....</p>
            <div class="tag">
              <a href="#">Chicken</a>
              <a href="#">Lemon</a>
              <a href="#">Sayur</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- List Recipes -->
  <div class="list">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">

          <h5><i class="fa fa-cutlery" aria-hidden="true"></i>  List Recipes</h5>

          <div class="box list recipes">
            <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Gerina Amy</div>
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes3.jpg" alt="">
            </a>
            <h2><a href="recipe-detail.html">Milk fruit fresh with vegetables </a></h2>
            <p>Fresh Fruit and Veg delivery from Milk & More brings the farmers market to your doorstep. Shop online now for quick, easy delivery...</p>
            <div class="tag">
              <a href="#">Milk</a>
              <a href="#">Lemon</a>
              <a href="#">Sayur</a>
            </div>
          </div>

          <div class="box list recipes">
            <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Gerina Amy</div>
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes3.jpg" alt="">
            </a>
            <h2><a href="recipe-detail.html">Milk fruit fresh with vegetables </a></h2>
            <p>Fresh Fruit and Veg delivery from Milk & More brings the farmers market to your doorstep. Shop online now for quick, easy delivery...</p>
            <div class="tag">
              <a href="#">Milk</a>
              <a href="#">Lemon</a>
              <a href="#">Sayur</a>
            </div>
          </div>

          <div class="box list recipes">
            <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Gerina Amy</div>
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes3.jpg" alt="">
            </a>
            <h2><a href="recipe-detail.html">Milk fruit fresh with vegetables </a></h2>
            <p>Fresh Fruit and Veg delivery from Milk & More brings the farmers market to your doorstep. Shop online now for quick, easy delivery...</p>
            <div class="tag">
              <a href="#">Milk</a>
              <a href="#">Lemon</a>
              <a href="#">Sayur</a>
            </div>
          </div>

          <div class="box list recipes">
            <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Gerina Amy</div>
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes3.jpg" alt="">
            </a>
            <h2><a href="recipe-detail.html">Milk fruit fresh with vegetables </a></h2>
            <p>Fresh Fruit and Veg delivery from Milk & More brings the farmers market to your doorstep. Shop online now for quick, easy delivery...</p>
            <div class="tag">
              <a href="#">Milk</a>
              <a href="#">Lemon</a>
              <a href="#">Sayur</a>
            </div>
          </div>

          <div class="box list recipes">
            <div class="by"><i class="fa fa-user" aria-hidden="true"></i> Gerina Amy</div>
            <a href="recipe-detail.html">
              <img src="/res/images/square-recipes3.jpg" alt="">
            </a>
            <h2><a href="recipe-detail.html">Milk fruit fresh with vegetables </a></h2>
            <p>Fresh Fruit and Veg delivery from Milk & More brings the farmers market to your doorstep. Shop online now for quick, easy delivery...</p>
            <div class="tag">
              <a href="#">Milk</a>
              <a href="#">Lemon</a>
              <a href="#">Sayur</a>
            </div>
          </div>

        </div>

        <div class="col-lg-12 text-center">
          <a href="#" class="btn btn-load">Load More</a>
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
            <p>My name is Gerina Amy, creator of Steaks & Chops. I've lived in Southern Ontario my whole life. A former house cleaner (AKA cleaning lady), I share cleaning tips on this blog from time to time but mostly I love to share my recipes. </p>
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
        <div class="col-lg-12">Made with <i class="fa fa-heart" aria-hidden="true"></i> &#8212; Copyright &copy; 2018 <a href="homepage-1.html">Steaks & Chops - Food Bootstrap Template</a>. All Rights Reserved.</div>
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