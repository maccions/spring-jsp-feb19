<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />

<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container-fluid justify-content-center">
        <a class="navbar-brand" href="${ctx}/"><img src="${ctx}/res/images/logo.png" alt><span>Steaks & Chops</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
            <ul class="navbar-nav ">
                <li class="nav-item ${pagina.endsWith('/') ? 'active' : ''} ${pagina.endsWith('/index') ? 'active' : ''} ${pagina.endsWith('/home') ? 'active' : ''}">
                    <a class="nav-link" href="${ctx}/">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                        Exmples

                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${ctx}/index">Homepage-1</a>
                        <a class="dropdown-item" href="${ctx}/index2">Homepage-2</a>
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
                <!--
                <li class="nav-item btn-submit-recipe">
                  <a class="nav-link" href="submit-recipes.html"><i class="fa fa-upload" aria-hidden="true"></i> Submit Recipe</a>
                </li>
                -->
            </ul>

            <form class="form-inline" method="get" action="${ctx}/cerca">
                <input type="text" name="testo" required placeholder="Cerca piatto" class="form-control ">
            </form>


        </div>
    </div>
</nav>