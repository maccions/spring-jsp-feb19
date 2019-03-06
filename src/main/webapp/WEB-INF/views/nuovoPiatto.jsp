<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<%@ include file="parts/start.jsp" %>
<title>${titolo} - Piatto</title>
<%@ include file="parts/css.jsp" %>
<%@ include file="parts/js_head.jsp" %>


<%@ include file="parts/middle.jsp" %>


<!-- navbar -->
<%@ include file="parts/navbar.jsp" %>


<!-- qui dentro il contenuto della pagina -->
<div class="content">

    <!-- nuovo/edit piatto -->
    <div class="page">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 title text-center">
                    <c:if test="${!modifica}">
                        <h1>Nuovo Piatto</h1>
                    </c:if>
                    <c:if test="${modifica}">
                        <h1>Modifica Piatto</h1>
                    </c:if>
                </div>
                <div class="col-lg-12">
                    <form method="post" action="${ctx}/salva-piatto" enctype="multipart/form-data">
                        <input type="hidden" name="id" value="${piatto.id}"/>
                        <div class="form-group">
                            <label for="txtnome">Nome</label>
                            <input type="text" class="form-control" id="txtnome" name="titolo" required value="${piatto.titolo}" placeholder="...">
                        </div>
                        <div class="form-group">
                            <label for="txtdesc">Descrizione</label>
                            <input type="text" class="form-control" id="txtdesc" name="descrizione" value="${piatto.descrizione}" placeholder="...">
                        </div>
                        <div class="form-group">
                            <label for="txtimg">Immagine</label><br>
                            <c:if test="${piatto.image!=null}">
                                <img src="${ctx}/res/${piatto.imageURL}" style="max-width:200px; height: auto;" />
                                <br>
                                <input type="checkbox" name="cancella" id="ckbCancella" value="true"> <label for="ckbCancella"> CANCELLA IMMAGINE</label>
                            </c:if>

                            <input type="file" class="form-control" id="txtimg" name="fimage" placeholder="...">

                        </div>
                        <button type="submit" class="btn btn-primary">SALVA</button>
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
