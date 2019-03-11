<c:set var="pagina" value="${requestScope['javax.servlet.forward.request_uri']}" />

<nav class="navbar navbar-expand-lg navbar-dark _fixed-top position-sticky">
    <div class="container-fluid justify-content-center">
        <a class="navbar-brand" href="${ctx}/"><img src="${ctx}/res/images/logo.png" alt="logo"><span>S&C</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item ${pagina.endsWith('/') ? 'active' : ''} ${pagina.endsWith('/index') ? 'active' : ''}">
                    <a class="nav-link" href="${ctx}/">Home</a>
                </li>
                <li class="nav-item ${pagina.endsWith('/menu') ? 'active' : ''}">
                    <a class="nav-link" href="${ctx}/menu">Menu</a>
                </li>
                <li class="nav-item ${pagina.endsWith('/servizi') ? 'active' : ''}">
                    <a class="nav-link" href="${ctx}/servizi">Servizi</a>
                </li>
                <li class="nav-item ${pagina.endsWith('/contatti') ? 'active' : ''}">
                    <a class="nav-link" href="${ctx}/contatti">Contatti</a>
                </li>



                <li class="nav-item ${pagina.endsWith('/nuovo-piatto') ? 'active' : ''}">
                    <a class="nav-link" href="${ctx}/admin/nuovo-piatto">Nuovo</a>
                </li>
                <li class="nav-item">
                        <sec:authorize access="!isAuthenticated()">
                            <a href="${ctx}/login" class="nav-link">Login</a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <a href="${ctx}/logout" class="nav-link">Logout</a>
                        </sec:authorize>
                </li>
                <!--
                <li class="nav-item dropdown ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Examples</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${ctx}/index">Homepage-1</a>
                        <a class="dropdown-item" href="${ctx}/index2">Homepage-2</a>
                    </div>
                </li>
                -->
                <!--
                <li class="nav-item btn-submit-recipe">
                  <a class="nav-link" href="submit-recipes.html"><i class="fa fa-upload" aria-hidden="true"></i> Submit Recipe</a>
                </li>
                -->
            </ul>
            <form class="form-inline" method="get" action="${ctx}/cerca">
                <input type="text" name="testo" required placeholder="Cerca piatto" class="form-control " >
            </form>
        </div>
    </div>
</nav>