<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
    <title>${titolo} - Piatto</title>
    <%@ include file="parts/css.jsp" %>
    <%@ include file="parts/js_head.jsp" %>


<%@ include file="parts/middle.jsp" %>


<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>








<!-- qui dentro il contenuto della pagina  -->
<div class="content">

    <!-- nuovo piatto -->
    <div class="page">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 title text-center">
                    <h1>Nuovo Piatto</h1>
                </div>
                <div class="col-lg-12">
                    <form method="post" action="/salva-piatto" enctype="multipart/form-data" >
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
                            <input type="file" class="form-control" id="txtimg" name="fimage" placeholder="...">
                        </div>
                        <button type="submit" class="btn btn-primary" >SALVA</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- fine contenuto pagina -->






<!-- footer -->
<%@ include file="parts/footer.jsp" %>

<!-- JS -->
<%@ include file="parts/js.jsp" %>





<%@ include file="parts/end.jsp" %>
