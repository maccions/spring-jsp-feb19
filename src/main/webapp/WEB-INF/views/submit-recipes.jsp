<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Steaks & Chops - Submit Recipes</title>

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
            <a class="nav-link" href="homepage-1.html">Home</a>
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

  <!-- Submit Recipe-->
  <div class="submit">
    <div class="title">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h2>Submit Recipe</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">

            <div class="form-group">
              <label>Recipe Title</label>
              <input type="text" class="form-control">
            </div>

            <div class="form-group">
              <label>Choose category</label>
              <select class="js-search-category form-control" name="category" data-placeholder="Choose Category">
                <option value="1">All</option>
                <option value="2">Breakfast</option>
                <option value="3">Lunch</option>
                <option value="4">Beverages</option>
                <option value="5">Appetizers</option>
                <option value="6">Soups</option>
                <option value="7">Salads</option>
                <option value="8">Beef</option>
                <option value="9">Poultry</option>
                <option value="10">Pork</option>
                <option value="11">Seafood</option>
                <option value="12">Vegetarian</option>
                <option value="13">Vegetables</option>
                <option value="14">Desserts</option>
                <option value="15">Canning / Freezing</option>
                <option value="16">Breads</option>
                <option value="17">Holidays</option>
              </select>
            </div>

            <div class="form-group">
              <label>Short summary</label>
              <textarea class="form-control" rows="4" required="required"></textarea>
            </div>

            <div class="form-group">
              <label>Tag</label>
              <input type="text" class="form-control">
            </div>

            <div class="form-group">
              <label>Upload your photos</label>
              <input type="file" class="form-control-file">
            </div>

            <div class="form-group">
              <label>Ingredients:</label>

              <div id="sortable">
                <div class="box ui-sortable-handle">
                  <div class="row">
                    <div class="col-lg-1 col-sm-1">
                      <i class="fa fa-arrows" aria-hidden="true"></i>
                    </div>
                    <div class="col-lg-5 col-sm-5">
                      <input type="text" class="form-control" placeholder="Name of ingredient">
                    </div>
                    <div class="col-lg-5 col-sm-5">
                      <input type="text" class="form-control" placeholder="Notes (quantity or additional info)">
                    </div>
                    <div class="col-lg-1 col-sm-1">
                      <i class="fa fa-times-circle-o minusbtn" aria-hidden="true"></i>
                    </div>
                  </div>
                </div>

              </div>
              <a href="#" class="btn btn-light">Add new ingredient</a>

            </div>

            <div class="form-group">
              <label>Directions:</label>
              <textarea class="form-control" rows="4" required="required"></textarea>
            </div>

            <div class="form-group">
              <label>Additional Informations</label>
              <hr>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Yield</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Preparation Time</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Cooking Time</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>

            <div class="form-group">
              <label>Nutrition Facts</label>
              <hr>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Calories</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Total Carbohydrate</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Total Fat</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Protein</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-2 col-form-label">Cholesterol</label>
              <div class="col-sm-10">
                <input type="text" class="form-control">
              </div>
            </div>

            <button type="submit" class="btn btn-submit">Submit Recipe</button>

          </div>
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